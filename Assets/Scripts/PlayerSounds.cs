using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class PlayerSounds : MonoBehaviour 
{
    [SerializeField] private AudioClip[] m_FootstepSounds;    // an array of footstep sounds that will be randomly selected from.
    [SerializeField] private AudioClip m_JumpSound;           // the sound played when character leaves the ground.
    [SerializeField] private AudioClip m_LandSound;           // the sound played when character touches back on ground.
    [SerializeField] [Range(0f, 1f)] private float m_RunstepLenghten;
    [SerializeField] private float m_StepInterval;

    private AudioSource m_AudioSource;
    private RigidbodyFirstPersonController m_CharacterController;

    private bool m_PreviouslyGrounded = false, m_PreviouslyJumping = false;
    private float m_StepCycle;
    private float m_NextStep;

    private void Start()
    {
        m_CharacterController = GetComponent<RigidbodyFirstPersonController>();
        m_AudioSource = GetComponent<AudioSource>();

        m_StepCycle = 0f;
        m_NextStep = m_StepCycle / 2f;
    }
    private void Update()
    {
        if (!m_PreviouslyGrounded && m_CharacterController.Grounded)
        {
            PlayLandingSound();
        }
        if (!m_PreviouslyJumping && m_CharacterController.Jumping)
        {
            PlayJumpSound();
        }
        m_PreviouslyGrounded = m_CharacterController.Grounded;
        m_PreviouslyJumping = m_CharacterController.Jumping;
    }
    private void FixedUpdate()
    {
        ProgressStepCycle(m_CharacterController.movementSettings.CurrentTargetSpeed);
    }
    private void PlayLandingSound()
    {
        m_AudioSource.clip = m_LandSound;
        m_AudioSource.Play();
        m_NextStep = m_StepCycle + .5f;
    }
    private void PlayJumpSound()
    {
        m_AudioSource.clip = m_JumpSound;
        m_AudioSource.Play();
    }
    private void ProgressStepCycle(float speed)
    {
        if (m_CharacterController.Velocity.sqrMagnitude > 0 && speed > 0)
        {
            m_StepCycle += (m_CharacterController.Velocity.magnitude + (speed * (m_CharacterController.Running ? m_RunstepLenghten : 1f))) * Time.fixedDeltaTime;
        }

        if (!(m_StepCycle > m_NextStep))
        {
            return;
        }

        m_NextStep = m_StepCycle + m_StepInterval;

        PlayFootStepAudio();
    }
    private void PlayFootStepAudio()
    {
        if (!m_CharacterController.Grounded)
        {
            return;
        }
        // pick & play a random footstep sound from the array,
        // excluding sound at index 0
        int n = Random.Range(1, m_FootstepSounds.Length);
        m_AudioSource.clip = m_FootstepSounds[n];
        m_AudioSource.PlayOneShot(m_AudioSource.clip);
        // move picked sound to index 0 so it's not picked next time
        m_FootstepSounds[n] = m_FootstepSounds[0];
        m_FootstepSounds[0] = m_AudioSource.clip;
    }
}
