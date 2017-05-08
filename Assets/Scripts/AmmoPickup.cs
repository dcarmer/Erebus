using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AmmoPickup : MonoBehaviour {

    [SerializeField] private int value = 20;

    public int Pickup()
    {
        Debug.Log(name + " picked up");
        Destroy(gameObject);
        return value;
    }
}
