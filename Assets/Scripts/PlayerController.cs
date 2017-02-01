using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(AudioSource))]
public class PlayerController : MonoBehaviour //TODO - ADD Mesh/Collider/AudioSync/AnimationSync, MouseLook, HeadBob, PushingForce, Lock Cursor
{
    //Input Axes
    private string
        Input_ToggleView = "tab",
        Input_Run = "left shift",
        Input_Jump = "Jump",
        Input_LookX = "Mouse X",
        Input_LookY = "Mouse Y",
        Input_Vertical = "Vertical",
        Input_Horizontal = "Horizontal";
    private float
        XSensitivity = 2f,
        YSensitivity = 2f;
    private bool
        LockCursor = true,
        isCursorLocked = false;

    //GameObject Components
    private AudioSource audioSource;
    private CharacterController characterController;

    //Linked Resources
        //Audio
    public AudioClip JumpSound, LandSound;
    public AudioClip[] StepSounds;
        //Cameras
    public Camera FirstPerson, Overhead;
        //Canvases
    public Canvas HUD;

    //Movement Variables
    public float baseSpeed = 1;
    private float currSpeed; //Tracks applied speed
    private Vector3 moveDir = Vector3.zero; //Keeps track of Player Movement
        //Running
    public bool isRunning = false;
    public float runSpeedMultiplier = 2; //Scale factor of regular speed
    public float stamina = 5; //Max Sprint Length
    private float beenRunning = 0; //Tracks Current Stamina
        //Audio Sync
    public float StrideInterval = 5; //Distance between footsteps
    [Range(0f, 1f)] public float StrideLengthen = .5f; //Scale factor of Footsteps
    private float StrideProgress = 0; //Tracks current distance between footsteps
        //Jumping
    public float JumpSpeed = 2;
    private bool wasGrounded = false;

    //Rendering Variables
    private bool fpv = false;//First Person View Mode
    private Rect miniMapBounds = new Rect(.7f, .02f, .28f, .2f);
    private Rect screenBounds = new Rect(0,0,1,1);
        //First Person
    private bool clampVerticalRotation = true;
    private float MinimumX = -90F; //Min Allowed X Rotation(Degrees) 
    private float MaximumX = 90F; //Max Allowed X Rotation(Degrees)

    void Start () 
    {
        audioSource = GetComponent<AudioSource>();
        characterController = GetComponent<CharacterController>();
        setMode(fpv);
        currSpeed = baseSpeed;
        MinimumX = Mathf.Tan(.5f*Mathf.Deg2Rad*MinimumX); //Optimizes
        MaximumX = Mathf.Tan(.5f*Mathf.Deg2Rad*MaximumX); //Optimizes
        CursorLock(LockCursor);
    }
    void Update () //For Frame Dependent Calls
    {
        //Handle Cursor Lock
        if (Input.GetKeyUp(KeyCode.Escape)) { CursorLock(false); }
        else if (Input.GetMouseButtonUp(0) && LockCursor) { CursorLock(true); }
        //Mode Toggle
        if (Input.GetKeyDown(Input_ToggleView)) { setMode(!fpv); }

        //Handle Running
        if (Input.GetKeyDown(Input_Run)) { isRunning = true; currSpeed = baseSpeed * runSpeedMultiplier; }
        if (Input.GetKeyUp(Input_Run) || beenRunning >= stamina) {isRunning = false; currSpeed = baseSpeed; }

        //Handle Jumping
        if (Input.GetButtonDown(Input_Jump) && characterController.isGrounded) //Jump Should Happen
        {
            moveDir.y += JumpSpeed; //Apply Y Movement
            PlayJumpingAudio();
        }
        if (!wasGrounded && characterController.isGrounded)
        {
            moveDir.y = 0; //Nullify Y Movement
            PlayLandingAudio();
        }
        wasGrounded = characterController.isGrounded; //Track Previous State
    }
    void FixedUpdate()
    {
        //Handle Running
        if (isRunning) { beenRunning += Time.fixedDeltaTime; }
        else if (beenRunning > 0) { beenRunning -= Time.fixedDeltaTime; }

        //Handle Movement
        Vector3 desiredMove;
        if (fpv)//First Person Controls
        {
            //Look at Mouse
            transform.localRotation *= Quaternion.Euler(0f, Input.GetAxis(Input_LookX) * XSensitivity, 0f);
            FirstPerson.transform.localRotation *= Quaternion.Euler(-Input.GetAxis(Input_LookY) * YSensitivity, 0f, 0f);
            FirstPerson.transform.localRotation = ClampRotationAroundXAxis(FirstPerson.transform.localRotation);

            Vector2 input = new Vector2(Input.GetAxis(Input_Horizontal), Input.GetAxis(Input_Vertical)).normalized;
            desiredMove = transform.forward*input.y + transform.right*input.x;
        }
        else //Top Down Controls
        {
            Vector2 input = new Vector2(Input.GetAxis(Input_Horizontal), Input.GetAxis(Input_Vertical)).normalized;
            desiredMove = transform.forward * input.y + transform.right * input.x;
        }
        moveDir.x = desiredMove.x * currSpeed; //X Movement
        moveDir.z = desiredMove.z * currSpeed; //Z Movement
        if (!characterController.isGrounded)
        {
            moveDir += 0.5f*Physics.gravity * Time.fixedDeltaTime; //Y Movement
        }
        characterController.Move(moveDir * Time.fixedDeltaTime);

        //TODO FIX BELOW - AUDIO STEP SYNC
        //Update StrideProgress
        if (characterController.velocity.sqrMagnitude > 0 && Input.GetAxis(Input_Vertical) + Input.GetAxis(Input_Horizontal) !=0)//Stuff??
        //if (moveDir.sqrMagnitude > 0) //Trying to move on own power(aka not standing still while being pushed or falling)
        {
            float StrideGait = (isRunning ? StrideLengthen : 1);
            StrideProgress += (characterController.velocity.magnitude+baseSpeed*StrideGait)*Time.fixedDeltaTime; //Stuff??
            //StrideProgress += (moveDir.magnitude * StrideGait) * Time.fixedDeltaTime;
        }
        if(StrideProgress > StrideInterval) //Step Should Occur
        {
            StrideProgress -= StrideInterval; //leave only overProgress
            if(characterController.isGrounded)
            {
                PlayFootStepAudio();
            }
        }
    }

    private void setMode(bool mode)
    {
        fpv = mode;
        if(fpv)
        {
            FirstPerson.rect = screenBounds; FirstPerson.depth = -1;
            HUD.worldCamera = FirstPerson;
            Overhead.rect = miniMapBounds; Overhead.depth = 0;
        }
        else
        {
            Overhead.rect = screenBounds; Overhead.depth = -1;
            HUD.worldCamera = Overhead;
            FirstPerson.rect = miniMapBounds; FirstPerson.depth = 0;
        }
    }
    private void PlayJumpingAudio()
    {
        audioSource.clip = JumpSound;
        audioSource.Play();
        
    }
    private void PlayLandingAudio()
    {
        audioSource.clip = LandSound;
        audioSource.Play();
    }
    private void PlayFootStepAudio()
    {
        int n = Random.Range(1, StepSounds.Length); //Pick Random(not most recent)
        audioSource.clip = StepSounds[n];
        audioSource.PlayOneShot(audioSource.clip);
        // update most recent
        StepSounds[n] = StepSounds[0];
        StepSounds[0] = audioSource.clip;
    }
    
    Quaternion ClampRotationAroundXAxis(Quaternion q)
    {
        q.x = Mathf.Clamp(q.x/q.w, MinimumX, MaximumX);
        q.y /= q.w;
        q.z /= q.w;
        q.w = 1.0f;
        return q;
    }
    private void CursorLock(bool val)
    {
        if (val)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
        else
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
    }
}
