using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Destrucatble : MonoBehaviour 
{
    [SerializeField] private float durability = 2;

    [SerializeField] private GameObject AmmoBox = null;
    [SerializeField][Range(0,1)] private float dropRate = .3f;

    public void applyDamage(float dmg)
    {
        durability -= dmg;
        if(durability <= 0)
        {
            if(Random.value < dropRate)
            {
                Instantiate(AmmoBox, transform.position, transform.rotation);
            }
            Destroy(gameObject);
        }
    }
}
