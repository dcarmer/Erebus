using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour 
{
    public static PlayerHealth SELF { get { return self; } }
    private static PlayerHealth self = null;
    [SerializeField] private float MAX_HEALTH = 10;
    [SerializeField] private Image HealthBar = null;
    [SerializeField] private GameObject DeathScreen = null;



    private bool dead = false;

    private void Awake()
    {
        if (self != null)
        {
            DestroyImmediate(gameObject);
            return;
        }
        self = this;
        DontDestroyOnLoad(gameObject);
        //gameObject.transform.position = Vector3.zero + Vector3.up;
    }
    private void OnLevelWasLoaded(int level)
    {
        if (level == 0)
        {
            DestroyImmediate(gameObject);
            return;
        }
        gameObject.transform.position = Vector3.zero + Vector3.up;
    }

    public void applyDamage(float dmg)
    {
        if(dead) { return; }

        HealthBar.fillAmount -= dmg / MAX_HEALTH;
        if(HealthBar.fillAmount <= 0)
        {
            HealthBar.fillAmount = 0;
            triggerDeath();
        }
    }
    public void replenishHealth(float amt)
    {
        if(dead) { return; }

        HealthBar.fillAmount += amt / MAX_HEALTH;
    }
    public void triggerDeath()
    {
        dead = true;
        DeathScreen.SetActive(true);
        DeathScreen.GetComponent<Animator>().SetTrigger("DeathFade");
        Debug.Log("Death Has Occured");
    }
}
