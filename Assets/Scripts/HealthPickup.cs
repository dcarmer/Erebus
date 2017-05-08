using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthPickup : MonoBehaviour 
{
    [SerializeField] private float value = 20;

    public float Pickup()
    {
        Debug.Log(name + " picked up");
        Destroy(gameObject);
        return value;
    }
}
