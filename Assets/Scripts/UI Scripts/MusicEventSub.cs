using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Slider))]
public class MusicEventSub : MonoBehaviour 
{
    private Slider slider;
    private void Start()
    {
        slider = GetComponent<Slider>();
        VolumeChanged(GameManager.SELF.MusicVolume); //Ensure correctly set on start without waiting for event

        slider.onValueChanged.AddListener(ChangeVolume); //Set Up Response on self input
        GameManager.SELF.MUSIC_VolumeChange += VolumeChanged; //Subscribe to outside input
    }
    private void OnDestroy()
    {
        GameManager.SELF.MUSIC_VolumeChange -= VolumeChanged;
    }
    private void ChangeVolume(float volume)
    {
        GameManager.SELF.MusicVolume = volume;
    }
    private void VolumeChanged(float volume)
    {
        slider.value = volume;
    }
}
