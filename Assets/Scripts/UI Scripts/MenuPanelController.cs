using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[RequireComponent(typeof(CanvasGroup))]
public class MenuPanelController : MonoBehaviour 
{
    //Ease of Use
    private const string VERTICAL_AXIS = "Vertical";
    private const string HORIZONTAL_AXIS = "Horizontal";
    private const string SUBMIT_AXIS = "Submit";
    private const string BACKTRACK_BUTTON = "Cancel";

    //THIS
    private CanvasGroup Panel;
    private Coroutine inputDetector = null;

    [Tooltip("Entry Point Selectable")] 
    public Selectable InitialSelect;

    void Start () 
    {
        Panel = GetComponent<CanvasGroup>();
    }
    public void display(bool value)
    {
        if (value)
        {
            Panel.alpha = 1;
            Panel.blocksRaycasts = true;
            Panel.interactable = true;
            if (inputDetector == null)//Prevents Memory Leak, of duplicate Corutines(makes sure finished before starting new) and checks that a selectable is provided
            {
                inputDetector = StartCoroutine(InputDetector()); //(call after enable)
            }
        }
        else
        {
            if(inputDetector != null)
            {
                StopCoroutine(inputDetector);
            }
            inputDetector = null;
            EventSystem.current.SetSelectedGameObject(null); //Deselects current(call before disabled)
            Panel.alpha = 0;
            Panel.blocksRaycasts = false;
            Panel.interactable = false;
        }
    }
    private IEnumerator InputDetector()
    {
        while (true)
        {
            yield return null;//Before Loop, to prevent duplicate logging

            //Handle Default Selection on Keyboard/Controller input
            if (InitialSelect != null && EventSystem.current.currentSelectedGameObject == null)
            {
                if ((Input.GetAxisRaw(VERTICAL_AXIS) != 0 || Input.GetAxisRaw(HORIZONTAL_AXIS) != 0 || Input.GetAxisRaw(SUBMIT_AXIS) != 0))
                {
                    EventSystem.current.SetSelectedGameObject(InitialSelect.gameObject);
                }
            }

            //Handle Backtracking
            if (Input.GetButtonDown(BACKTRACK_BUTTON))
            {
                MenuController.self.Backtrack();
            }
            
        }
    }
}
