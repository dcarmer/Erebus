using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour 
{
    public Scene TitleScene;
    public GameObject tile, player;
    public static bool isPaused = true;

    private int xMax, yMax, zMax;//Maximum Node Locations
    private Transform[,,] board;
    private static readonly int[,] PathableDirections = new int[,]{ { 1, 0, 0 }, { 0, 0, 1 }, { -1, 0, 0 }, { 0, 0, -1 } };
    private static readonly string[,] ChildNames = new string[,] {  { "Right", "Left" }, { "Back", "Front" }, { "Left", "Right" }, { "Front", "Back" } };
    void Start()
    {
        //Has to be in Start, Must Be Done Before Any Instantiations
        SceneManager.SetActiveScene(gameObject.scene); 
        switch(MenuController.self.mapSize)
        {
            case MenuController.MapSize.Small:
                xMax = 8; yMax = 1; zMax = 8;
                break;
            case MenuController.MapSize.Medium:
                xMax = 12; yMax = 1; zMax = 12;
                break;
            case MenuController.MapSize.Large:
                xMax = 16; yMax = 1; zMax = 16;
                break;
        }
        GenerateLevel();
        //SpawnPlayers();
        MenuController.self.GameReady(gameObject.scene);
        PauseGame(false);
    }
    void Update()
    {
        if (!isPaused && Input.GetButtonDown("Cancel"))
        {
            PauseGame(true);
        }
    }
    public void SpawnPlayers()
    {
        for(int i=0;i<MenuController.players;i++)
        {
            Vector3 pos = new Vector3(Random.Range(0, board.GetLength(0)), Random.Range(0, board.GetLength(1)), Random.Range(0, board.GetLength(2)));
            Instantiate(player, pos, Quaternion.identity);
        }
    }
    public static void PauseGame(bool p) //Handles Pause Event on Game Side
    {
        isPaused = p;
        if(p)
        {
            Debug.Log("Game Paused");
            //Pause Game Functions Here
            MenuController.self.Pause(true);
        }
        else
        {
            Debug.Log("Game Unpaused");
            //Unpause Game Functions Here
        }
    }
    void GenerateLevel()
    {
        board = new Transform[xMax,yMax,zMax];
        Stack<int[]> branches = new Stack<int[]>();
        int x=0, y=0, z=0; //Current Node Location
        board[x,y,z] = Instantiate(tile, new Vector3(x,y,z), Quaternion.identity).transform;
        int n; //Selected Path Index
        while (true)
        {
            List<int> unvisited = getUnvisitedDirectionsIndices(x,y,z);
            if(unvisited.Count != 0)//Not at dead end
            {
                if(unvisited.Count > 1)//At Branching Tile
                {
                    branches.Push(new int[]{x,y,z}); //Save for Later
                }
                n = unvisited[Random.Range(0, unvisited.Count)]; //Select Adjacent
                board[x,y,z].Find(ChildNames[n,0]).gameObject.SetActive(false); //Link Current Node
                x += PathableDirections[n, 0]; y += PathableDirections[n, 1]; z += PathableDirections[n, 2]; //Make Next Node Current
                board[x,y,z] = Instantiate(tile, new Vector3(x,y,z), Quaternion.identity).transform; //Make Next Node
                board[x,y,z].Find(ChildNames[n,1]).gameObject.SetActive(false); //Link Next Node
            }
            else if(branches.Count !=0)//Still Have Options
            {
                int [] last = branches.Pop();
                x = last[0]; y = last[1]; z = last[2]; //Get Last Tile With Options
            }
            else { break; }//Finished
        }
    }
    List<int> getUnvisitedDirectionsIndices(int x, int y, int z)
    {
        List<int> directions = new List<int>();
        int xx, yy, zz; //Potential Node Location
        for(int i =0;i<PathableDirections.GetLength(0);i++)
        {
            xx = x + PathableDirections[i, 0];
            yy = y + PathableDirections[i, 1];
            zz = z + PathableDirections[i, 2];
            if (0<=xx&&xx<board.GetLength(0) && 
                0<=yy&&yy<board.GetLength(1) && 
                0<=zz&&zz<board.GetLength(2) && 
                board[xx,yy,zz] == null)//Checks if valid Direction
            {
                directions.Add(i);
            }
        }
        return directions;
    }
}
