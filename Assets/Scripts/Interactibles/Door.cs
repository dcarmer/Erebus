using UnityEngine;

[RequireComponent(typeof(Animator))]
public class Door : Interactable
{
    private Animator animator;
    private const string OPEN_BOOL = "Open";

    private void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void ToggleState()
    {
        Debug.Log("Door: "+animator.GetBool("Open"));
        animator.SetBool("Open", !animator.GetBool("Open"));
        Debug.Log("Door: " + animator.GetBool("Open"));
    }
}
