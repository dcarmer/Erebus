using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthPickup : MonoBehaviour 
{
    [SerializeField] private float value = 20;
    [SerializeField] private AudioClip clip;

    public float Pickup()
    {
        AudioSource.PlayClipAtPoint(clip, transform.position);
        Debug.Log(name + " picked up");
        Destroy(gameObject);
        return value;
    }
}
