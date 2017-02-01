using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MOBController : MonoBehaviour {

    public Vector3 goal;
	// Use this for initialization
	void Start () {
        GetComponent<NavMeshAgent>().destination = goal;
	}
	
	// Update is called once per frame
	void Update () {
        GetComponent<NavMeshAgent>().destination = goal;
    }
}
