using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayOnHit : MonoBehaviour 
{
    [SerializeField] private AudioClip sound;

    private AudioSource source;

    void Start () 
    {
        source = GetComponent<AudioSource>();
    }
    private void OnCollisionEnter(Collision collision)
    {
        source.PlayOneShot(sound);
    }
}
