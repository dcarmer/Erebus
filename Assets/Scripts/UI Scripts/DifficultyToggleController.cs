using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator), typeof(UnityEngine.UI.Toggle))]
public class DifficultyToggleController : MonoBehaviour 
{
    public bool ignoreRepeatCalls = true;
    public GameController.Difficulty size;
    public AudioSource SelectionSound;
    private Animator animator;
    private bool selected;

    void Start()
    {
        animator = GetComponent<Animator>();
    }
    public void onValueChange(bool value)
    {
        if (!ignoreRepeatCalls || selected != value) //Prevents Repetative Calls
        {
            animator.SetBool("Selected", selected = value);
            if (value) //Only on set to True
            {
                GameController.self.difficulty = size;
                SelectionSound.Play();
            }
        }
    }
}
