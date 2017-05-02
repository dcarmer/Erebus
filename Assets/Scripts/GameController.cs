using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameController : MonoBehaviour //TODO - Support multiple players, merge with menu, multiple levels, game music in pause menu, proper bounding volume
{
    //Ease of Use
    private const string PAUSE_BUTTON = "Cancel";
    private const string PKEY_SFXVOL = "SFX_Volume";
    private const string PKEY_MUSICVOL = "Music_Volume";

    //ENUMs
    public enum Difficulty { Easy, Normal, Hard };
    public enum MapSize { Small, Medium, Large };

    //THIS 
    public static GameController self = null;

[Header("Linked Resources")]
    public AudioMixer AUX_MIXER;
    public GameObject FLOOR;
    public GameObject PLAYER;
    public LineRenderer lr;
    
[Header("Game State")]
    public Difficulty difficulty = Difficulty.Normal;
    public MapSize mapSize = MapSize.Medium;
    public float SFXVolume
    {
        get
        {
            float volume;
            AUX_MIXER.GetFloat(PKEY_SFXVOL, out volume);
            return DBtoLinear(volume);
        }
        set { AUX_MIXER.SetFloat(PKEY_SFXVOL, LinearToDB(value)); }
    }
    public float MusicVolume
    {
        get
        {
            float volume;
            AUX_MIXER.GetFloat(PKEY_MUSICVOL, out volume);
            return DBtoLinear(volume);
        }
        set { AUX_MIXER.SetFloat(PKEY_MUSICVOL, LinearToDB(value)); }
    }
    public FloorController currentFloor = null;
    public int Depth = 0;
    public bool paused
    {
        get { return Time.timeScale == 0;}
        set { Time.timeScale = value ? 0 : 1; Debug.Log("Game Paused: " + value); }
    }

    private void Awake()
    {
        //Singleton
        if (self == null) { self = this; }
        else { Destroy(gameObject); Debug.LogError("Duplicate GameControllers"); return; }

        LoadPlayerPrefs();
    }
    void Start()
    {
        //paused = true;
    }
    
    void Update()
    {
        if (!paused && Input.GetButtonDown(PAUSE_BUTTON)) //Not Paused(aka in menu) and Pressed Pause
        {
            paused = true;
            MenuController.self.SwitchTo(MenuController.self.PauseScreen);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
    }
    public void LoadFloor()
    {
        GameObject floor = Instantiate(FLOOR);
        floor.name = "Floor 1";
        currentFloor = floor.GetComponent<FloorController>();
    }

    private float LinearToDB(float volume)
    {
        return (volume <= 0.0001) ? -80 : (20 * Mathf.Log10(Mathf.Clamp01(volume)));//Clamps to [0,1]
    }
    private float DBtoLinear(float volume)
    {
        return Mathf.Pow(10, Mathf.Clamp(volume, -80, 0) / 20); //Clamp to [-80,0]
    }
    private void LoadPlayerPrefs()
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
    private void OnApplicationQuit()
    {
        PlayerPrefs.SetFloat(PKEY_SFXVOL, SFXVolume);
        PlayerPrefs.SetFloat(PKEY_MUSICVOL, MusicVolume);
    }
}
