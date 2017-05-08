using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrowbarController : MonoBehaviour 
{
    private Animator animator = null;
    private Collider hitbox = null;
    private bool Swinging = false;
    private Rigidbody rb = null;
    private void Start()
    {
        animator = GetComponent<Animator>();
        rb = GetComponentInParent<Rigidbody>();
        hitbox = GetComponent<Collider>();
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
    }
    public void StopSwinging()
    {
        Swinging = false;
        hitbox.enabled = false;
    }
}
