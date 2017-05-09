using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Follow : MonoBehaviour 
{

    [SerializeField] private Transform Eyes;

    [SerializeField] private LayerMask VisionBlocking;
    [SerializeField] private float maxRange = 20;

    [SerializeField] private float health = 3;

    [SerializeField] private GameObject HealthDrop = null;
    [SerializeField][Range(0,1)] private float dropRate = .5f;

    [SerializeField] private float minWanderTime = 1;
    [SerializeField] private float maxWanderTime = 10;
    [SerializeField] private float wanderRadius = 5;

    [SerializeField] private float attackRange = .5f;
    [SerializeField] private float attackDamage = 2;
    [SerializeField] private float attackRate = 1;


    private Transform target;
    private NavMeshAgent agent;
    private Animator anim;

    private float lastAttackTime = 0;
    private bool aggro = false;
    private float maxRangeSqrd, attackRangeSqrd;


    void Start () 
    {
        agent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();
        target = PlayerHealth.SELF.transform;
        maxRangeSqrd = maxRange * maxRange;
        attackRangeSqrd = attackRange * attackRange;
        StartCoroutine(IdleState());
    }
    public void applyDamage(float dmg)
    {
        health -= dmg;
        anim.SetTrigger("Flinch");
        if(health <= 0)
        {
            Debug.Log(name+" has been killed");
            if(Random.value < dropRate)
            {
                Instantiate(HealthDrop, transform.position, transform.rotation);
            }
            Destroy(gameObject);
        }
    }
    void Update () 
    {
        anim.SetFloat("Speed", agent.velocity.magnitude / agent.speed);
        float distance = (target.position - Eyes.position).sqrMagnitude;
        if (distance <= maxRangeSqrd && !Physics.Linecast(Eyes.position, target.position, VisionBlocking, QueryTriggerInteraction.Ignore)) //Sees you
        {
            Debug.Log(name + " Sees you "+ distance);
            if(!aggro)
            {
                StopAllCoroutines();
                aggro = true;
            }
            if (distance < attackRangeSqrd && Time.time - lastAttackTime >= attackRate)
            {
                anim.SetTrigger("Attack");
                lastAttackTime = Time.time;
                PlayerHealth.SELF.applyDamage(attackDamage);
            }
            agent.SetDestination(target.position);
            
        }
        else
        {
            if(aggro)
            {
                if(agent.remainingDistance < .1)
                {
                    aggro = false;
                    StartCoroutine(IdleState());
                }
            }
        }
    }
    private IEnumerator IdleState()
    {
        while(true)
        {
            yield return new WaitForSeconds(Random.Range(minWanderTime,maxWanderTime));
            agent.SetDestination(RandomNavSphere(transform.position, wanderRadius, agent.areaMask));
        }
    }

    private static Vector3 RandomNavSphere(Vector3 origin, float dist, int areaMask)
    {
        Vector3 randDirection = Random.insideUnitSphere * dist;

        NavMeshHit navHit;
        NavMesh.SamplePosition(randDirection + origin, out navHit, dist, areaMask);

        return navHit.position;
    }
}
