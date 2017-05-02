using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuController : MonoBehaviour 
{
    //THIS
    public static MenuController self = null;
    private Stack<MenuPanelController> History = new Stack<MenuPanelController>();

[Header("Linked Resources")]
    public MenuPanelController StartScreen;
    public MenuPanelController PauseScreen;
    public MenuPanelController LoadingScreen;
    public Slider SFX_Slider, Music_Slider;
    public AudioSource BackgroundMusic;


    void Start () 
    {
        if (self == null) { self = this; }
        else { Destroy(gameObject); Debug.LogError("Duplicate MenuControllers"); return; }

        SFX_Slider.value = GameController.self.SFXVolume;
        Music_Slider.value = GameController.self.MusicVolume;

        BackgroundMusic.Play();
        SwitchTo(StartScreen, true);
    }
    
    public void SwitchToAdd(MenuPanelController panel)//For Inspector Use
    {
        SwitchTo(panel);
    }
    public void SwitchTo(MenuPanelController panel = null, bool clear = false) //Progresses to panel
    {
        if (clear) //Clear History, Add Fresh Panel 
        {
            while (History.Count > 0)
            {
                MenuPanelController p = History.Pop();
                if (p != null) { p.display(false); }
            }
            History.Push(panel);
            if (panel == null) //Switching to GameState
            {
                GameController.self.paused = false; //Send Event to GameController
            }
            else
            {
                panel.display(true);
            }
        }
        if (History.Peek() != panel) //Prevents Redundant Panel States
        {
            if (History.Peek() != null) //Not coming from GameState
            {
                History.Peek().display(false);//Hide Current Panel
            }
            if (panel == null) //Switching to GameState
            {
                History.Clear(); //One Way Transition
                History.Push(null); //Add GameState
                GameController.self.paused = false; //Send Event to GameController
            }
            else
            {
                History.Push(panel); //Add new State
                panel.display(true); //Show new Panel
            }
        }
    }
    public void Backtrack() //Returns to prev panel if exists
    {
        if (History.Count > 1)
        {
            History.Pop().display(false);//Hide Current Panel
            if (History.Peek() != null)
            {
                History.Peek().display(true);//Show Prev Panel
            }
            else//Backtracked to GameState 
            {
                GameController.self.paused = false; //Send Event to GameController
            }
        }
        else { Debug.Log("Cannot Backtrack - No History"); }
    }
    //Menu Interfaces
    public void StartGame()//ADD CREATION OF LEVEL AS COROUTINE
    {
        SwitchTo(LoadingScreen);
        GameController.self.LoadFloor();
        //yield return StartCoroutine(GameController.self.CreateLevel());
        SwitchTo(null);
    }
    public void QuitGame() //ADD REMOVAL OF CURRENT LEVEL
    {
        SwitchTo(StartScreen, true);
        //GameController.self.DestroyLevel();
    }
    public void QuitApplication()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
}
