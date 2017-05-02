using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class LightSwitch : Interactable 
{
    public Light[] lights;
    public Renderer[] emmisives;
    public Material emmisiveOn, emmisiveOff;

    private bool on = false;

    private Animator animator;
    private const string ON_TRIGGER = "On", OFF_TRIGGER = "Off";

    private void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void ToggleState()
    {
        foreach(Light l in lights) //Toggle Lights On/Off
        {
            l.enabled = !l.enabled;
        }
        foreach(Renderer rend in emmisives) //Toggle Emmisive Materials On/Off
        {
            rend.sharedMaterial = (rend.sharedMaterial == emmisiveOff)?emmisiveOn: emmisiveOff;
        }

        if(on)
        {
            animator.SetTrigger(OFF_TRIGGER);
            on = false;
        }
        else
        {
            animator.SetTrigger(ON_TRIGGER);
            on = true;
        }
    }
}
