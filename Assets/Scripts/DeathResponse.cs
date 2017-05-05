using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class DeathResponse : MonoBehaviour 
{
    [SerializeField] RigidbodyFirstPersonController playerControls = null;
    [SerializeField] GameObject HUD = null;
    [SerializeField] GameObject[] Weapons = null;
    private void OnEnable()
    {
        playerControls.enabled = false;
        HUD.SetActive(false);
        foreach(GameObject go in Weapons)
        {
            go.SetActive(false);
        }
    }
    public void ReturnToMenu()
    {
        Debug.Log("Finished Death Screen");
        LoadingScreen.SELF.LoadLevel(0);
    }
    private void OnDisable()
    {
        /*playerControls.enabled = true;
        HUD.SetActive(true);
        foreach (GameObject go in Weapons)
        {
            go.SetActive(true);
        }*/
    }
}
