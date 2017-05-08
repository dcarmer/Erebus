using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponSwitch : MonoBehaviour 
{
    [SerializeField] private PauseMenuController PauseScreen = null;
    [SerializeField] private GameObject[] Weapons;
    private int ActiveWeapon = 0;
    

    private void Start()
    {
        foreach(GameObject go in Weapons)
        {
            go.SetActive(false);
        }
        Weapons[ActiveWeapon].SetActive(true);
    }
    private void Update()
    {
        if(Input.GetAxis("Mouse ScrollWheel") != 0)
        {
            Weapons[ActiveWeapon].SetActive(false);
            ActiveWeapon = (ActiveWeapon + Math.Sign(Input.GetAxis("Mouse ScrollWheel")) + Weapons.Length) % Weapons.Length;
            Weapons[ActiveWeapon].SetActive(true);
        }
        if(Input.GetKeyDown(KeyCode.Escape) || Input.GetKeyDown("p"))
        {
            PauseScreen.enabled = !PauseScreen.enabled;
        }
    }

}
