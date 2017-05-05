using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class UnderWater : MonoBehaviour 
{
    [SerializeField] private LayerMask WaterLayer = (1<<4);
    [SerializeField] private Camera Head = null;
    [SerializeField] private GameObject OxygenDisplay = null;
    [SerializeField] private Image OxygenBar = null;
    [SerializeField] private float LungCapacity = 5;
    [SerializeField] private float DrowningDPS = 2;
    private Coroutine HoldingBreath = null;

    private void OnTriggerStay(Collider other)
    {
        Debug.Log(WaterLayer.value+" In Trigger: " + (1 << other.gameObject.layer));
        if (((1 << other.gameObject.layer) & WaterLayer) != 0)
        {
            if(other.bounds.Contains(Head.transform.position))
            {
                Debug.Log("Head Submerged");
                if (HoldingBreath == null)
                {
                    Debug.Log("Began Holding Breath");
                    HoldingBreath = StartCoroutine(HoldBreath());
                }
            }
            else
            {
                Debug.Log("Caught Breath");
                StopAllCoroutines();
                HoldingBreath = null;
                OxygenDisplay.SetActive(false);
            }
        }
    }
    private IEnumerator HoldBreath()
    {
        OxygenDisplay.SetActive(true);
        OxygenBar.fillAmount = 1;
        while(OxygenBar.fillAmount > 0)
        {
            OxygenBar.fillAmount -= Time.deltaTime / LungCapacity;
            yield return null;
        }
        while(true)
        {
            GetComponent<PlayerHealth>().applyDamage(DrowningDPS*Time.deltaTime);
            yield return null;
        }
    }
}
