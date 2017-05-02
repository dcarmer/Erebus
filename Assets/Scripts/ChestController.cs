using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChestController : MonoBehaviour 
{
    public bool Locked = false;
    public Transform Lid;
    private enum Item {Max_Health, Max_Armor, Max_Stamina, Key, Melee_Weapon, Range_Weapon, OpenPath, ShowPath}
    private Item item;
    
    void Start () 
    {
        item = (Item)Random.Range(0, System.Enum.GetValues(typeof(Item)).Length);
    }
    void OnTriggerEnter(Collider other)
    {
        open();
    }
    //Opens the chest
    public void open()
    {
        //Play Opening Animation/Sound
        //Display UI/Modify Chest Inventory
        Lid.Translate(Vector3.up * .2f, Space.World);
        StartCoroutine(close());
    }
    public IEnumerator close()
    {
        yield return new WaitForSeconds(1);
        Lid.Translate(Vector3.up * -.2f, Space.World);
        //Play Closing Animation/Sound
        //Despawn?
    }
}
