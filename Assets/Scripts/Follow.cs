using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Follow : MonoBehaviour 
{
    public float wanderRadius;
    public float wanderTimer;
    private float timer;

    public Transform target;
    private NavMeshAgent agent;
    private Animator anim;

    private float health = 3;


    void Start () 
    {
        agent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();

        timer = wanderTimer;
    }
    public void applyDamage(float dmg)
    {
        health -= dmg;
        if(health <= 0)
        {
            Debug.Log(name+" has been killed");
            Destroy(gameObject);
        }
    }
    void Update () 
    {
        anim.SetFloat("Speed", agent.velocity.magnitude / agent.speed);
        /*agent.SetDestination(target.position);
        anim.SetFloat("Speed", agent.velocity.magnitude/agent.speed);
        /*if(agent.pathStatus != NavMeshPathStatus.PathComplete)
        {
            agent.Stop();
        }
        else
        {
            agent.Resume();
        }*/

        timer += Time.deltaTime;

        if (timer >= wanderTimer)
        {
            agent.SetDestination(RandomNavSphere(transform.position, wanderRadius, agent.areaMask));
            timer = 0;
        }

    }

    public static Vector3 RandomNavSphere(Vector3 origin, float dist, int areaMask)
    {
        Vector3 randDirection = Random.insideUnitSphere * dist;

        NavMeshHit navHit;
        NavMesh.SamplePosition(randDirection + origin, out navHit, dist, areaMask);

        return navHit.position;
    }
}
