using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class MenuController : MonoBehaviour 
{
    public static MenuController self = null;
    public GameObject StartMenu, LoadingScreen, PauseMenu;
    public static int players = 4;

    public enum Difficulty { Easy, Normal, Hard }; 
    public Difficulty difficulty = Difficulty.Normal;
    public enum MapSize { Small, Medium, Large }; 
    public MapSize mapSize = MapSize.Medium;

    private Stack<GameObject> History = new Stack<GameObject>();

    void Awake () //Singleton Pattern
    {
        Log("MenuController - Awake");
        if (self==null) 
        {
            Log("First MenuController");
            self = this;
        }
        else 
        {
            Log("Destroyed duplicate MenuController");
            Destroy(gameObject); 
        }
    }
    void Start () 
    {
        Log("MenuController - Start");
        foreach (Transform child in transform) //JIC - Disables all Menus
        {
            child.gameObject.SetActive(false);
        }
        SwitchToMenu(StartMenu);
    }
    void Update()
    {
        if(GameController.isPaused && Input.GetButtonDown("Cancel"))
        {
            if(History.Peek() == PauseMenu)//UnPause
            {
                Pause(false);
            }
            else if(History.Peek() != StartMenu)
            {
                BacktrackMenu();
            }
            
        }
    }
    public void Pause(bool p)//Handles Pause Event on Menu Side
    {
        History.Clear();
        if (p)
        {
            gameObject.SetActive(true);
            SwitchToMenu(PauseMenu);
        }
        else
        {
            PauseMenu.SetActive(false);
            gameObject.SetActive(false);
            GameController.PauseGame(false);
        }
    }
    public void playerJoin()
    {
        Log("Added Player: "+ ++players);
    }
    public void SwitchToMenu(GameObject menu)
    {
        Log("Switching Menu to: "+menu.name);
        if (History.Count != 0) //Cold Swap
        { 
            History.Peek().SetActive(false); //Hide Current Menu
        }
        History.Push(menu); //Add New Menu to History
        menu.SetActive(true); //Show New Menu
    }
    public void BacktrackMenu()
    {
        Log("Backtracking in Menus");
        History.Pop().SetActive(false); //Hide Current Menu
        History.Peek().SetActive(true); //Show Old Menu
    }
    public void StartGame()
    {
        Log("Starting Game");
        History.Peek().SetActive(false); //Hides Current Menu
        LoadingScreen.SetActive(true); //Shows Loading Screen
        SceneManager.LoadSceneAsync("GameScene", LoadSceneMode.Additive).allowSceneActivation = true;
    }
    /* Intended to be called by GameManager in Newly Loaded Scene */
    public void GameReady(Scene lvl)
    {
        Log(lvl.name + " is Ready");
        LoadingScreen.SetActive(false);
        History.Clear(); //Started Game, no more menu history
        gameObject.SetActive(false);
    }
    public void Quit() //TODO Improve
    {
        Log("Quiting Game");
        if (History.Count != 0) //Cold Swap
        {
            History.Peek().SetActive(false); //Hide Current Menu
        }
        History.Clear();
        SwitchToMenu(StartMenu);
    }
    public void Exit()
    {
        Log("Exiting Game");
        Application.Quit();
    }
    
    public void SetDifficulty(int diff)
    {
        Log("Switching to Difficulty: "+((Difficulty)diff).ToString());
        difficulty = (Difficulty)diff;
    }
    public void SetMapSize(int sz)
    {
        Log("Switching to MapSize: " + ((MapSize)sz).ToString());
        mapSize = (MapSize)sz;
    }
    [System.Diagnostics.Conditional("DEBUG")] //Strips Method when DEBUG undefined
    private void Log(object msg) { Debug.Log(msg); }
}
