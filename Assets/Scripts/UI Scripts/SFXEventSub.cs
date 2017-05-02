using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Slider))]
public class SFXEventSub : MonoBehaviour 
{
    private Slider slider;
    private void Start()
    {
        slider = GetComponent<Slider>();
        VolumeChanged(GameManager.SELF.SFXVolume); //Ensure correctly set on start without waiting for event

        slider.onValueChanged.AddListener(ChangeVolume); //Set Up Response on self input
        GameManager.SELF.SFX_VolumeChange += VolumeChanged; //Subscribe to outside input
    }
    private void OnDestroy()
    {
        GameManager.SELF.SFX_VolumeChange -= VolumeChanged;
    }
    private void ChangeVolume(float volume)
    {
        GameManager.SELF.SFXVolume = volume;
    }
    private void VolumeChanged(float volume)
    {
        slider.value = volume;
    }
}
