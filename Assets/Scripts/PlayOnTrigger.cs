using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayOnTrigger : MonoBehaviour 
{
    [SerializeField] private AudioClip sound;

    private AudioSource source;

    void Start()
    {
        source = GetComponent<AudioSource>();
    }
    private void OnTriggerEnter(Collider other)
    {
        source.PlayOneShot(sound);
    }
}
