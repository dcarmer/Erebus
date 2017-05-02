using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(CharacterController))]
public class MOBController : MonoBehaviour 
{
    private const string PLAYER_TAG = "Player";
    private const int ENTITY_LAYER = 9;

    //THIS
    public enum AI_STATE {IDLE, AGGRO }
    public AI_STATE aiState = AI_STATE.IDLE;
    private static Dictionary<Vector3, List<Vector3>> visGraph;
    private CharacterController characterController;
    private SphereCollider agroVolume;

    public Transform goal;
    public Vector3 dest;
    public float speed = 1;
    public float aggroRadius = 10;

    
    /*void Start ()
    {
        characterController = GetComponent<CharacterController>();
        visGraph = GameController.self.makeVisGraph(characterController.radius*transform.localScale.x,characterController.height*transform.localScale.y);
        agroVolume = gameObject.AddComponent<SphereCollider>();
        agroVolume.isTrigger = true;
        agroVolume.radius = aggroRadius;
        agroVolume.hideFlags = HideFlags.NotEditable;
        dest = transform.position;
        StartCoroutine(AI_FSM()); //Start AI Finite State Machine
    }
    private IEnumerator AI_FSM() //Handles State Transitions
    {
        while(true)
        {
            yield return StartCoroutine(aiState.ToString()); //Waits for Routine to Finish(aka switch state)
        }
    }
    private IEnumerator IDLE()//Idle Functionality
    {
        //Coroutine c = new Coroutine();
        Debug.Log("Begining Idle State");
        Vector3 idleDest;
        while(aiState == AI_STATE.IDLE)
        {
            Vector2 dir = Random.insideUnitCircle;
            idleDest = new Vector3(Mathf.Round(dir.x), 0, Mathf.Round(dir.y)) + transform.position;
            Debug.Log("Moving");
            while (!MoveToward(idleDest))
            {
                yield return null;
            }
            Debug.Log("Arrived, now Waiting");
            for(int i=0;i<10;i++)
            {
                yield return new WaitForSeconds(.5f);
            }
        }
        //StopCoroutine(c);
        Debug.Log("Ending Idle State");
    }
    private IEnumerator AGGRO() //Aggro Functionality
    {
        Debug.Log("Begining Aggro State");
        while (aiState == AI_STATE.AGGRO)
        {
            MoveToward(dest);
            yield return null;
        }
        Debug.Log("Ending Aggro State");
    }
    private float getPathDistance(Vector3 dist)
    {
        float sum = 0;
        List<Vector3> path;
        GameController.aStar(characterController.radius * transform.localScale.x, characterController.height * transform.localScale.y, visGraph, transform.position, dest, out path);
        for (int i = 0; i < path.Count - 1; i++)
        {
            sum += Vector3.Distance(path[i], path[i + 1]);
        }
        return sum;
    }
    private IEnumerator MoveTo(Vector3 dest)
    {
        List<Vector3> path;
        GameController.aStar(characterController.radius * transform.localScale.x, characterController.height * transform.localScale.y, visGraph, transform.position, dest, out path);
        
        Vector3 dir = Vector3.zero;
        for (int i = 1; i < path.Count; i++)
        {
            dir = path[i] - transform.position;
            while (dir.sqrMagnitude > 0.01) //Still not close enough
            {
                characterController.SimpleMove(dir.normalized * speed); //Move Closer
                drawPath(path);
                yield return null;
                dir = path[i] - transform.position;
            }
        }
    }
    private bool MoveToward(Vector3 dest)//Returns if reached furthest point
    {
        List<Vector3> path;
        GameController.aStar(characterController.radius * transform.localScale.x, characterController.height * transform.localScale.y, visGraph, transform.position, dest, out path);

        if(path.Count > 1)
        {
            Vector3 dir = path[1] - transform.position;
            transform.rotation = Quaternion.LookRotation(Vector3.ProjectOnPlane(dir, transform.up), transform.up);
            characterController.SimpleMove(dir.normalized * speed); //Move Closer
            return (path[path.Count - 1] - transform.position).sqrMagnitude < 0.01;
        }

        return true;
    }
    private void drawPath(List<Vector3> path)
    {
        for (int j = 0; j < path.Count - 1; j++)
        {
            Debug.DrawLine(path[j], path[j + 1], Color.red);
        }
    }
    private void OnTriggerStay(Collider other)
    {
        drawConeOfSight();
        if (other.gameObject.tag == PLAYER_TAG && !Physics.Linecast(transform.position, other.transform.position,~(1<<ENTITY_LAYER))) //Player in agro, and Line of sight
        {
            Debug.Log("In Sight");
            dest = other.transform.position;
            aiState = AI_STATE.AGGRO;
            Debug.DrawLine(transform.position, other.transform.position,Color.blue);
        }
    }
    private void drawConeOfSight()
    {
        Vector3 p1 = transform.position + Quaternion.Euler(0, -30, 0) * transform.forward * aggroRadius * transform.localScale.x;
        Vector3 p2 = transform.position + Quaternion.Euler(0, 30, 0) * transform.forward * aggroRadius * transform.localScale.x;
        Debug.DrawLine(transform.position, p1);
        Debug.DrawLine(transform.position, p2);
        Debug.DrawLine(p1,p2);
    }*/
}
