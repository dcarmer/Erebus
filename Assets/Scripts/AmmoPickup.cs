using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AmmoPickup : MonoBehaviour {

    [SerializeField] private int value = 20;
    [SerializeField] private AudioClip clip;

    public int Pickup()
    {
        AudioSource.PlayClipAtPoint(clip,transform.position);
        Debug.Log(name + " picked up");
        Destroy(gameObject);
        return value;
    }
}
