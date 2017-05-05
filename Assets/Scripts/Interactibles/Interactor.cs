using UnityEngine;
using UnityEngine.UI;

public class Interactor : MonoBehaviour 
{
    [SerializeField] private LayerMask INTERACTABLE_MASK = (1 << 10);
    public float InteractRadius = 2;
    [SerializeField] private GameObject InteractMessageDisplay = null;
    private Text InteractMessageText = null;
    private Interactable ActiveInteractible = null;

    private void Awake()
    {
        InteractMessageText = InteractMessageDisplay.GetComponentInChildren<Text>();
    }

    private Interactable getClosestInteractableInRange()
    {
        Collider[] withinRange = Physics.OverlapSphere(transform.position, InteractRadius, INTERACTABLE_MASK, QueryTriggerInteraction.Ignore);
        Collider closest = null; float minDist = Mathf.Infinity;
        foreach (Collider c in withinRange)
        {
            float dist = (c.transform.position - transform.position).sqrMagnitude;
            if (dist < minDist)
            {
                closest = c; minDist = dist;
            }
        }

        if (closest != null)
        {
            return closest.GetComponent<Interactable>();
        }
        return null;
    }
    private void Update()
    {
        if (Input.GetKeyDown("e") && ActiveInteractible != null)
        {
            ActiveInteractible.OnInteract.Invoke();
            ActiveInteractible = null; //In case OnInteract changes state of Interactible
        }
    }
    private void FixedUpdate()
    {
        ActiveInteractible = getClosestInteractableInRange();
        if (ActiveInteractible != null)
        {
            InteractMessageDisplay.SetActive(true);
            InteractMessageText.text = "Press Select to " + ActiveInteractible.Context;
        }
        else
        {
            InteractMessageDisplay.SetActive(false);
        }
    }
}
