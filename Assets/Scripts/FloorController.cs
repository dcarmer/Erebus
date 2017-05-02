using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

using NavMesh = System.Collections.Generic.Dictionary<UnityEngine.Vector3, System.Collections.Generic.List<UnityEngine.Vector3>>;
public class FloorController : MonoBehaviour
{
    //Ease of Use
    private const int ENTITIES_LAYER = 9;
    private const int LAYER_MASK = ~(1 << ENTITIES_LAYER);
    private const float TILE_RADIUS = 2.5f;
    private const float TILE_WALL_THICKNESS = .11f;

    private struct Pair 
    { 
        public int x, z; 
        public Pair getAdj(AdjDirection dir)
        {
            switch (dir)
            {
                case AdjDirection.Up:
                    return new Pair { x = x, z = z + 1 };
                case AdjDirection.Left:
                    return new Pair { x = x - 1, z = z };
                case AdjDirection.Down:
                    return new Pair { x = x, z = z - 1 };
                case AdjDirection.Right:
                    return new Pair { x = x + 1, z = z };
            }
            return this;
        }
    }
    private const int NUM_ADJ_DIR = 4;
    private enum AdjDirection { Right, Down, Left, Up }
    private Dictionary<AdjDirection,string> ChildNames = new Dictionary<AdjDirection, string>() { { AdjDirection.Up, "Wall003" }, {AdjDirection.Left,"Wall004"}, {AdjDirection.Down,"Wall001"}, {AdjDirection.Right,"Wall002"} };




    //THIS
    private byte[,] Level; //4-Bit Mask {Up,Left,Down,Right} 0 = wall, 1= clear 
    private Transform[,] LevelObjects;
    private Dictionary<float, NavMesh> SizedNavMeshes = new Dictionary<float, NavMesh>(); 
    private List<MOBController> Enemies = new List<MOBController>();
    public Vector3 StartPos;
    public Vector3 EndPos;


[Header("Enemies")]
    public GameObject SLIME; //Weak - Dumb
    public GameObject GRUNT; //Average - Normal
    public GameObject MINION; //Tough - Smart
    public GameObject BOSS; //Hard - Relentless

[Header("Interactables")]
    public GameObject CHEST;
    public GameObject DOOR;
    public GameObject LIGHT;

[Header("Tile Types")]
    public GameObject START;
    public GameObject END;
    public GameObject TILE;

    void Start()
    {
        switch (GameController.self.mapSize)
        {
            case GameController.MapSize.Small:
                Level = new byte[8, 8];
                LevelObjects = new Transform[8, 8];
                break;
            case GameController.MapSize.Medium:
                Level = new byte[12, 12];
                LevelObjects = new Transform[12, 12];
                break;
            case GameController.MapSize.Large:
                Level = new byte[16, 16];
                LevelObjects = new Transform[16, 16];
                break;
        }
        //Bounds of World
        BoxCollider LevelKillBounds = gameObject.AddComponent<BoxCollider>();
        LevelKillBounds.hideFlags = HideFlags.NotEditable;
        LevelKillBounds.isTrigger = true;
        LevelKillBounds.size = new Vector3(Level.GetLength(0), 1, Level.GetLength(1));
        LevelKillBounds.center = .5f * (LevelKillBounds.size - Vector3.one);
        LevelKillBounds.size += 5*Vector3.one;

        Stack<Pair> Open = new Stack<Pair>();
        Pair current = new Pair();
        while (true)
        {
            List<AdjDirection> unvisited = getAdjClosedTiles(current);
            if (unvisited.Count > 0) //Continue with current node expansion
            {
                if (unvisited.Count > 1) //At node with multiple options
                {
                    Open.Push(current);
                }
                AdjDirection dir = unvisited[Random.Range(0, unvisited.Count)]; //Pick random dir
                current = linkTiles(current, dir); //Link tiles and transition to next tile
            }
            else if (Open.Count > 0) //Backtrack to most recent node with unexpanded options
            {
                current = Open.Pop();
            }
            else //Out of options
            {
                break;
            }
        }

        for (int x = 0; x < Level.GetLength(0); x++)
        {
            for (int z = 0; z < Level.GetLength(1); z++)
            {
                Transform t = Instantiate(TILE, new Vector3(x, 0, z) * 2 * TILE_RADIUS, Quaternion.identity).transform; //Make Next Node
                t.parent = transform; //Add Parent
                for (int i = 0; i < NUM_ADJ_DIR; i++)
                {
                    if ((Level[x, z] & 1 << i) != 0)
                    {
                        t.Find(ChildNames[(AdjDirection)i]).gameObject.SetActive(false); //Remove Walls
                    }
                }
                LevelObjects[x, z] = t;
            }
        }

        //Level Creation Finished, now Populate

        Instantiate(GameController.self.PLAYER, Vector3.zero, Quaternion.identity);
    }
    private void Update()
    {
        foreach(KeyValuePair<Vector3,List<Vector3>> kv in getNavMesh(.15f))
        {
            foreach(Vector3 v in kv.Value)
            {
                //Debug.DrawLine(kv.Key, v);
            }
        }
    }
    private void OnTriggerExit(Collider other) //Needs Improvement
    {
        if (other.tag == GameController.self.PLAYER.tag)
        {
            other.GetComponentInChildren<PlayerController>().kill();
        }
        else
        {
            Destroy(other.attachedRigidbody.gameObject);
        }
    }
    private List<AdjDirection> getAdjClosedTiles(Pair p) //Assumes p is valid point
    {
        List<AdjDirection> adjDirs = new List<AdjDirection>();
        if (0 <= p.x - 1 && Level[p.x - 1, p.z] == 0)
        { adjDirs.Add(AdjDirection.Left); }
        if (p.x + 1 < Level.GetLength(0) && Level[p.x + 1, p.z] == 0)
        { adjDirs.Add(AdjDirection.Right); }
        if (0 <= p.z - 1 && Level[p.x, p.z - 1] == 0)
        { adjDirs.Add(AdjDirection.Down); }
        if (p.z + 1 < Level.GetLength(1) && Level[p.x, p.z + 1] == 0)
        { adjDirs.Add(AdjDirection.Up); }
        return adjDirs;
    }
    private Pair linkTiles(Pair p, AdjDirection dir)//Assumes p and dir are valid
    {
        Pair q = p.getAdj(dir);
        Level[p.x, p.z] |= (byte)(1 << (int)dir);
        Level[q.x, q.z] |= (byte)(1 << (((int)dir + NUM_ADJ_DIR / 2) % NUM_ADJ_DIR));
        return q;
    }
    
    
    public void modifyLevel()
    {
        SizedNavMeshes.Clear(); //TODO - Modify Level
    }
    

    //Pathfinding
    public bool aStar(float radius, Vector3 src, Vector3 dest, out List<Vector3> path)
    {
        //Heuristic = Straight Line Distance
        path = new List<Vector3>();
        List<Vector3> destPoly = getEnclosePoly(dest, radius);
        NavMesh nm = getNavMesh(radius); //Pathable Node Graph

        //Visited Nodes Set
        HashSet<Vector3> closed = new HashSet<Vector3>();
        //Each Nodes Optimal Parent and Path Cost(g)
        Dictionary<Vector3, KeyValuePair<Vector3, float>> pathMeta = new Dictionary<Vector3, KeyValuePair<Vector3, float>>();
        //Open Nodes Set with Total Estimated Path Cost(f)
        Dictionary<Vector3, float> open = new Dictionary<Vector3, float>();

        //Manual expand src node
        foreach (Vector3 v in getEnclosePoly(src, radius))
        {
            float gScore = Vector3.Distance(v, src);
            pathMeta[v] = new KeyValuePair<Vector3, float>(src, gScore);
            open[v] = gScore + Vector3.Distance(v, dest);
        }
        while(open.Count > 0)//Still Nodes to expand
        {
            Vector3 curr = open.OrderBy(kv => kv.Value).First().Key;//Lowest f in open
            if(destPoly.Contains(curr))//Reached Destination's Polygon
            {
                path.Add(dest);
                while(curr != src)//Make Path of Optimal Parents
                {
                    path.Add(curr);
                    curr = pathMeta[curr].Key;
                }
                path.Add(src);
                RaycastHit hit; //Don't Care About this - Replace with wildcard in C#7
                Vector3 dir;
                for (int i = 0; i < path.Count - 2; i++) //Check if Middle Nodes are necessary, if not remove
                {
                    dir = path[i + 2] - path[i];
                    if (!Physics.SphereCast(path[i], radius, dir, out hit, dir.magnitude, LAYER_MASK, QueryTriggerInteraction.Ignore))
                    {
                        path.RemoveAt(i + 1); i--;
                    }
                }
                path.Reverse();
                return true;
            }
            open.Remove(curr);
            closed.Add(curr);
            foreach (Vector3 adj in nm[curr])
            {
                if (closed.Contains(adj)) { continue; } //Visited Already

                float g = pathMeta[curr].Value + Vector3.Distance(curr, adj);
                if (!open.ContainsKey(adj) || g < pathMeta[adj].Value) //New or Shorter Path Found
                {
                    pathMeta[adj] = new KeyValuePair<Vector3, float>(curr, g); //Add or Update parent node and act cost
                    open[adj] = g + Vector3.Distance(adj, dest); //Add or Update node and est total cost
                }
            }
        }
        return false;
    }
    private NavMesh getNavMesh(float radius)
    {
        if(!SizedNavMeshes.ContainsKey(radius)) //If none cached for radius, make
        {
            NavMesh nm = new NavMesh();
            
            for (int x = 0; x < Level.GetLength(0); x++)
            {
                for (int z = 0; z < Level.GetLength(1); z++)
                {
                    foreach (Vector3 v in getEnclosePoly(new Vector3(x,0,z) * 2 * TILE_RADIUS, radius))
                    {
                        nm[v] = new List<Vector3>(3);
                    }
                }
            }
            RaycastHit hit; //Don't Care About this - Replace with wildcard in C#7
            Vector3 dir;
            foreach (KeyValuePair<Vector3, List<Vector3>> s in nm)
            {
                foreach (KeyValuePair<Vector3, List<Vector3>> d in nm)
                {
                    if (s.Key != d.Key) //Skip Same Point
                    {
                        dir = d.Key - s.Key;
                        if (!Physics.SphereCast(s.Key, radius, dir, out hit, dir.magnitude, LAYER_MASK, QueryTriggerInteraction.Ignore))
                        {
                            nm[s.Key].Add(d.Key);
                        }
                    }
                }
            }
            SizedNavMeshes[radius] = nm;
        }
        return SizedNavMeshes[radius];
    }
    private List<Vector3> getEnclosePoly(Vector3 v, float radius)
    {
        float buffer = TILE_RADIUS-TILE_WALL_THICKNESS - radius;
        List<Vector3> verts = new List<Vector3>(4);
        v /= 2 * TILE_RADIUS;
        v = new Vector3(Mathf.RoundToInt(v.x), Mathf.RoundToInt(v.y), Mathf.RoundToInt(v.z));
        v *= 2 * TILE_RADIUS;
        verts.Add(new Vector3(v.x + buffer, 0, v.z + buffer));
        verts.Add(new Vector3(v.x + buffer, 0, v.z - buffer));
        verts.Add(new Vector3(v.x - buffer, 0, v.z - buffer));
        verts.Add(new Vector3(v.x - buffer, 0, v.z + buffer));
        return verts;
    }
}
