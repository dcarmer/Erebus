using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrowbarController : MonoBehaviour 
{
    [SerializeField] private AudioClip[] swingSounds;
    private AudioSource audioSource;

    private Animator animator = null;
    private Collider hitbox = null;
    private bool Swinging = false;
    private Rigidbody rb = null;
    private void Start()
    {
        animator = GetComponent<Animator>();
        rb = GetComponentInParent<Rigidbody>();
        hitbox = GetComponent<Collider>();
        audioSource = GetComponent<AudioSource>();
        hitbox.enabled = false;
    }
    private void Update()
    {
        if (Swinging) { return; }

        if (Input.GetButtonDown("Fire1"))
        {
            SwingBar();
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Hit: " + other.name);
        if(other.attachedRigidbody != null && other.attachedRigidbody != rb)
        {
            Debug.Log("Has RB");
            Follow enemy = other.attachedRigidbody.gameObject.GetComponent<Follow>();
            Destrucatble destruct = other.attachedRigidbody.gameObject.GetComponent<Destrucatble>();
            if (enemy != null)
            {
                enemy.applyDamage(1);
            }
            if (destruct != null)
            {
                destruct.applyDamage(1);
            }
            other.attachedRigidbody.AddForce(1000*transform.parent.parent.forward);
        }
    }
    private void SwingBar()
    {
        animator.SetTrigger("Swing");
        Swinging = true;
        hitbox.enabled = true;
        PlaySwingSound();
    }
    private void PlaySwingSound()
    {
        // excluding sound at index 0
        int n = Random.Range(1, swingSounds.Length);
        audioSource.clip = swingSounds[n];
        audioSource.PlayOneShot(audioSource.clip);
        // move picked sound to index 0 so it's not picked next time
        swingSounds[n] = swingSounds[0];
        swingSounds[0] = audioSource.clip;
    }
    public void StopSwinging()
    {
        Swinging = false;
        hitbox.enabled = false;
    }
}
