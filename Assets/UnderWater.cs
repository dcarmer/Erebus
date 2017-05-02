using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnderWater : MonoBehaviour 
{
    public bool Submerged = false;
    public GameObject WaterPlane;
    // Use this for initialization
    void Start () 
    {
        
    }

    // Update is called once per frame
    void Update () 
    {
        if(Submerged)
        {
            WaterPlane.transform.rotation = Quaternion.Euler(180, 0, 0);
        }
        else
        {
            WaterPlane.transform.rotation = Quaternion.Euler(0, 0, 0);
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        
    }
}
