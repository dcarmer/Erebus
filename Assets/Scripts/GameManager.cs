using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class GameManager : MonoBehaviour 
{
    public static GameManager SELF { get { return self; } }
    private static GameManager self = null;

    //Audio Management
    private const string PKEY_SFXVOL = "SFX_Volume";
    private const string PKEY_MUSICVOL = "Music_Volume";
    [SerializeField] private AudioMixer AUX_MIXER;
    public float SFXVolume
    {
        get
        {
            float volume;
            AUX_MIXER.GetFloat(PKEY_SFXVOL, out volume);
            return DBtoLinear(volume);
        }
        set 
        { 
            AUX_MIXER.SetFloat(PKEY_SFXVOL, LinearToDB(value));
            if (SFX_VolumeChange != null) { SFX_VolumeChange(value); }
        }
    }
    public float MusicVolume
    {
        get
        {
            float volume;
            AUX_MIXER.GetFloat(PKEY_MUSICVOL, out volume);
            return DBtoLinear(volume);
        }
        set 
        { 
            AUX_MIXER.SetFloat(PKEY_MUSICVOL, LinearToDB(value));
            if (MUSIC_VolumeChange != null) { MUSIC_VolumeChange(value); }
        }
    }

    public delegate void VolumeChanged(float volume);
    public event VolumeChanged SFX_VolumeChange, MUSIC_VolumeChange;
    


    private void Awake()
    {
        if (self != null)
        {
            DestroyImmediate(gameObject);
            return;
        }
        self = this;
        DontDestroyOnLoad(gameObject);
        LoadPlayerPrefs();
    }
    


    private void LoadPlayerPrefs() //Loads any pertinent data from player prefs
    {
        if (PlayerPrefs.HasKey(PKEY_SFXVOL))
        {
            SFXVolume = PlayerPrefs.GetFloat(PKEY_SFXVOL);
        }
        if (PlayerPrefs.HasKey(PKEY_MUSICVOL))
        {
            MusicVolume = PlayerPrefs.GetFloat(PKEY_MUSICVOL);
        }
    }
    private void SavePlayerPrefs() //Saves any pertinent data to player prefs
    {
        PlayerPrefs.SetFloat(PKEY_SFXVOL, SFXVolume);
        PlayerPrefs.SetFloat(PKEY_MUSICVOL, MusicVolume);
    }
    private float LinearToDB(float volume)
    {
        return (volume <= 0.0001) ? -80 : (20 * Mathf.Log10(Mathf.Clamp01(volume)));//Clamps to [0,1]
    }
    private float DBtoLinear(float volume)
    {
        return Mathf.Pow(10, Mathf.Clamp(volume, -80, 0) / 20); //Clamp to [-80,0]
    }
    private void OnApplicationQuit()
    {
        SavePlayerPrefs();
    }
}
