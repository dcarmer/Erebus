using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickuper : MonoBehaviour 
{
    private PlayerHealth health = null;
    [SerializeField] private GunRaycastController gun = null;

    private void Start()
    {
        health = GetComponent<PlayerHealth>();
    }

    private void OnTriggerEnter(Collider other)
    {
        AmmoPickup a = other.gameObject.GetComponent<AmmoPickup>();
        HealthPickup h = other.gameObject.GetComponent<HealthPickup>();
        if (a != null)
        {
            gun.addAmmo(a.Pickup());
        }
        if(h != null)
        {
            health.replenishHealth(h.Pickup());
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        AmmoPickup a = collision.gameObject.GetComponent<AmmoPickup>();
        HealthPickup h = collision.gameObject.GetComponent<HealthPickup>();
        if (a != null)
        {
            gun.addAmmo(a.Pickup());
        }
        if (h != null)
        {
            health.replenishHealth(h.Pickup());
        }
    }
}
