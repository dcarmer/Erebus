using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController), typeof(AudioSource))]
public class PlayerController : MonoBehaviour //TODO - ADD Mesh/Collider/AudioSync/AnimationSync, HeadBob, PushingForce, Lock Cursor
{
    //Ease of Use
    private const int INTERACTABLE_MASK = (1 << 10);
    private const string TOGGLE_VIEW_BUTTON = "tab";
    private const string RUN_BUTTON = "left shift";
    private const string JUMP_BUTTON = "Jump";
    private const string HORIZONTAL_VIEW_AXIS = "Mouse X";
    private const string VERTICAL_VIEW_AXIS = "Mouse Y";
    private const string VERTICAL_AXIS = "Vertical";
    private const string HORIZONTAL_AXIS = "Horizontal";
    private const string FIRE_BUTTON = "Fire1";
    private Rect MINIMAP_BOUNDS = new Rect(.7f, .02f, .28f, .2f);
    private Rect SCREEN_BOUNDS = new Rect(0, 0, 1, 1);

    //THIS
    private AudioSource audioSource;
    private CharacterController characterController;
    public bool AbsoluteMovementInput = true; //Aka: Mouse vs Controller
    private Vector3 moveDir = Vector3.zero; //Needed for manual applying gravity
    private bool wasGrounded = false; //Needed to detect landing
    private bool wantsToJump = false; //Needed to catch input
    private Interactable ActiveInteractible = null;

[Header("Linked Resources")]
    public Camera FirstPerson, Overhead;
    public Canvas HUD;
    public Text InteractableContext;
    public Transform Body;
    private Transform Head;
    public GameObject Projectile;
    public AudioClip JumpSound, LandSound;
    public AudioClip[] StepSounds;
[Header("Character Stats")]
    public float MAX_HEALTH = 6;
    public float health = 6;
    public float MAX_ARMOR = 6;
    public float armor = 6;
    public float MAX_STAMINA = 6;
    private float _stamina;
    public float stamina
    {
        get { return _stamina; }
        set 
        { 
            if(value <= 0)
            {
                _stamina = 0;
                isRunning = false;
            }
            else
            {
                _stamina = Mathf.Min(MAX_STAMINA, value);
            }
        }
    }
    public float WalkSpeed = 1;
    public float RunSpeed = 2;
    public float JumpSpeed = 2;
    public float InteractRadius = 2;
[Header("Character State")]
    private bool _FirstPersonView = false;
    public bool FirstPersonView
    {
        get { return _FirstPersonView; }
        set
        {
            _FirstPersonView = value;
            if (value)
            {
                FirstPerson.rect = SCREEN_BOUNDS; FirstPerson.depth = -1;
                HUD.worldCamera = FirstPerson;
                Overhead.rect = MINIMAP_BOUNDS; Overhead.depth = 0;
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
            }
            else
            {
                Overhead.rect = SCREEN_BOUNDS; Overhead.depth = -1;
                HUD.worldCamera = Overhead;
                FirstPerson.rect = MINIMAP_BOUNDS; FirstPerson.depth = 0;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                FirstPerson.transform.localRotation = Quaternion.identity;
            }
        }
    }
    public bool melee = true;
    private bool _isRunning;
    public bool isRunning
    {
        get { return _isRunning; }
        set
        {
            if (value)
            {
                if (stamina > 0)
                {
                    _isRunning = true;
                    CurrentSpeed = RunSpeed;
                }
            }
            else
            {
                _isRunning = false;
                CurrentSpeed = WalkSpeed;
            }
        }
    }
    private float CurrentSpeed = 0;
    public bool drawPath = false;
    public Vector3 dest;
    

    void Start () 
    {
        audioSource = GetComponent<AudioSource>();
        characterController = GetComponent<CharacterController>();
        Head = FirstPerson.transform;
        FirstPersonView = false;
        CurrentSpeed = WalkSpeed;
    }
    void Update () //For Frame Dependent Calls
    {
        if (!GameController.self.paused)
        {
            //Input Response
            if (Input.GetButton(FIRE_BUTTON)) { attack(); } //Attacks
            if (Input.GetKeyDown(TOGGLE_VIEW_BUTTON)) { FirstPersonView = !FirstPersonView; } //View Toggle
            if (Input.GetKeyDown(RUN_BUTTON)) { isRunning = true; } //Run Start
            if (Input.GetKeyUp(RUN_BUTTON)) { isRunning = false; } //Run End
            if (Input.GetButtonDown(JUMP_BUTTON)) { wantsToJump = true; } //Jump If Possible

            //Handle Landing
            if (!wasGrounded && characterController.isGrounded) //Landed
            {
                moveDir.y = -.01f;
                audioSource.PlayOneShot(LandSound); //Play Landing Sound
            }
            wasGrounded = characterController.isGrounded; //Track Previous State

            if(drawPath)
            {
                List<Vector3> path;
                if(GameController.self.currentFloor.aStar(.15f, transform.position, dest, out path))
                {
                    GameController.self.lr.numPositions = path.ToArray().Length;
                    GameController.self.lr.SetPositions(path.ToArray());
                }
                else { Debug.Log("No Path"); }
            }

            if(Input.GetKeyDown("e") && ActiveInteractible != null)
            {
                ActiveInteractible.OnInteract.Invoke();
                ActiveInteractible = null;
            }
        }
    }
    void FixedUpdate()
    {
        if(!GameController.self.paused)
        {
            updateStamina();
            updateTransform();
            ActiveInteractible = getClosestInteractableInRange();
            if(ActiveInteractible != null)
            {
                InteractableContext.text = "Press Select to " + ActiveInteractible.Context;
            }
            else
            {
                InteractableContext.text = "";
            }
            PlayFootStepAudio();
        }
    }
    private Quaternion ClampRotationAroundXAxis(Quaternion q)
    {
        //Clamp(MinX,MaxX); {Min/MaxX} = Mathf.Tan(.5f*Mathf.Deg2Rad*{Min/Max Degrees});
        q.x = Mathf.Clamp(q.x / q.w, -1, 1);
        q.y /= q.w;
        q.z /= q.w;
        q.w = 1.0f;
        return q;
    }

    private void updateStamina()
    {
        //Handle Running/Stamina
        if (isRunning) { stamina -= Time.fixedDeltaTime; } //Depleat stamina over time running
        else { stamina += Time.fixedDeltaTime; } //Replenish stamina over time not running
    }

    private void updateTransform()
    {
        //Handle Movement
        Vector3 desiredMove = Vector3.zero;
        Vector2 input = new Vector2(Input.GetAxis(HORIZONTAL_AXIS), Input.GetAxis(VERTICAL_AXIS)).normalized;
        if (FirstPersonView)//First Person Controls
        {
            //Rotate to Look in Direction
            Body.localRotation *= Quaternion.AngleAxis(Input.GetAxis(HORIZONTAL_VIEW_AXIS), Vector3.up);//Rotate Body(left right)
            Head.localRotation = ClampRotationAroundXAxis(Head.localRotation * Quaternion.AngleAxis(Input.GetAxis(VERTICAL_VIEW_AXIS), Vector3.left));//Rotate Head(up down) Bounded

            //Move relative to rotation
            desiredMove = (Body.forward * input.y + Body.right * input.x) * CurrentSpeed;
        }
        else //Top Down Controls
        {
            if (AbsoluteMovementInput)//Rotate to Look at Point
            {
                //Look at Mouse
                Vector3 Look = Input.mousePosition; Look.z = Overhead.transform.position.y;
                Look = Overhead.ScreenToWorldPoint(Look); Look.x -= Body.position.x; Look.z -= Body.position.z;
                Body.localRotation = Quaternion.LookRotation(Look, Body.up);
            }
            else //Rotate to Look in Direction
            {
                Vector3 Look = new Vector3(Input.GetAxis(HORIZONTAL_VIEW_AXIS), 0, Input.GetAxis(VERTICAL_VIEW_AXIS));
                if (Look != Vector3.zero) { Body.localRotation = Quaternion.LookRotation(Look.normalized, Body.up); }
            }

            //Move absolutely
            desiredMove = (Vector3.forward * input.y + Vector3.right * input.x) * CurrentSpeed;
        }
        moveDir.x = desiredMove.x; moveDir.z = desiredMove.z;

        if (!characterController.isGrounded)
        {
            moveDir += 0.5f * Physics.gravity * Time.fixedDeltaTime; //Manually Applied Gravity
        }
        else if (wantsToJump)
        {
            wantsToJump = false;
            moveDir.y = JumpSpeed; //Apply Jump Movement
            //Play Jump Sound
            audioSource.PlayOneShot(JumpSound);
        }
        characterController.Move(moveDir * Time.fixedDeltaTime);
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

    //Placeholders
    private void PlayFootStepAudio()
    {
        //Update StrideProgress Accourdingly
        //Detect if footstep should occur
        /*if (characterController.isGrounded)
        {
            int n = Random.Range(1, StepSounds.Length); //Pick Random(not most recent)
            audioSource.PlayOneShot(StepSounds[n]);
            // update most recent
            audioSource.clip = StepSounds[n];
            StepSounds[n] = StepSounds[0];
            StepSounds[0] = audioSource.clip;
        }*/
    }
    public void attack()
    {
        if(melee) //Melee Attack, Cone of effectiveness, limited range
        {
            Debug.DrawRay(transform.position, Quaternion.Euler(0, -30, 0) * Body.forward);
            Debug.DrawRay(transform.position, Quaternion.Euler(0, 30, 0) * Body.forward);
        }
        else if(FirstPersonView) //Range Attack, First Person Shooter
        {
            Instantiate(Projectile, Body.position, FirstPerson.transform.rotation).GetComponent<Rigidbody>().velocity = FirstPerson.transform.forward * 10;
            Debug.DrawRay(Body.position, FirstPerson.transform.forward);
        }
        else //Range Attack, Top Down
        {
            Instantiate(Projectile, Body.position, Body.rotation).GetComponent<Rigidbody>().velocity = Body.forward * 10;
            Debug.DrawRay(Body.position, Body.forward);
        }
    }
    public void applyDamage(float dmg)
    {
        health -= dmg;
        if(health <= 0)
        {
            kill();
        }
    }
    public void kill()
    {
        Debug.Log("Killed");
    }
}
