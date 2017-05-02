using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class test : MonoBehaviour 
{
    private ParticleSystem ps;
    public Vector3 vel;
    // Use this for initialization
    void Start () 
    {
        ps = GetComponent<ParticleSystem>();
    }

    // Update is called once per frame
    [ContextMenu("Emit")]
    void Update () 
    {
        ps = GetComponent<ParticleSystem>();
        ParticleSystem.EmitParams pem = new ParticleSystem.EmitParams();
        pem.position = ps.transform.position;
        pem.velocity = vel;
        ps.Emit(pem, 1);
    }
}
