using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GunRaycastController : MonoBehaviour 
{
    [SerializeField] private AudioClip[] gunShotSounds; 
    [SerializeField] private AudioClip reloadSound;
    [SerializeField] private int MagSize = 10;
    [SerializeField] private GameObject AmmoDisplay = null;
    [SerializeField] private Text ReserveAmmo = null;
    [SerializeField] private Text CurrentAmmo = null;
    private int CurrentAmmoCount, ReserveAmmoCount;

    public LineRenderer lr;
    public LineRenderer laserSight;
    public Image crosshairs;
    public Light l;
    public ParticleSystem ps;
    public float FadeTime = 1;
    public float MaxRange = 20;

    private AudioSource audioSource;

    private void Start()
    {
        audioSource = GetComponent<AudioSource>();
        CurrentAmmoCount = MagSize;
        ReserveAmmoCount = MagSize;
        CurrentAmmo.text = CurrentAmmoCount.ToString();
        ReserveAmmo.text = ReserveAmmoCount.ToString();
    }


    IEnumerator MuzzleFlash()
    {
        l.gameObject.SetActive(true);
        yield return new WaitForSeconds(.1f);
        l.gameObject.SetActive(false);
    }
    IEnumerator Fade()
    {
        Vector3 dir = lr.transform.forward;
        RaycastHit hitInfo;
        if(Physics.Raycast(lr.transform.position, dir,out hitInfo, MaxRange,Physics.DefaultRaycastLayers, QueryTriggerInteraction.Ignore))
        {
            Debug.Log("Hit: " + hitInfo.collider.gameObject.name);
            if(hitInfo.rigidbody != null)
            {
                Follow enemy = hitInfo.rigidbody.gameObject.GetComponent<Follow>();
                Destrucatble destruct = hitInfo.rigidbody.gameObject.GetComponent<Destrucatble>();
                if (enemy != null)
                {
                    enemy.applyDamage(1);
                }
                if(destruct != null)
                {
                    destruct.applyDamage(1);
                }
                Debug.Log("Bullet Force");
                hitInfo.collider.attachedRigidbody.AddForceAtPosition(10 * dir, hitInfo.point, ForceMode.Impulse);
            }
            //ADD HIDING PAST COLLISION POINT
        }
        


        
        lr.SetPosition(1, transform.position);
        lr.enabled = true;
        Vector3 pos = transform.position;
        lr.SetPosition(0, pos);
        Color faded = lr.startColor;
        faded.a = 1;
        while(faded.a > 0)
        {
            lr.startColor = faded;
            pos += dir * (MaxRange * Time.deltaTime / FadeTime);
            lr.SetPosition(0, pos);
            faded.a -= Time.deltaTime / FadeTime;
            yield return null;
        }
        lr.startColor = faded;
        lr.enabled = false;//.SetActive(false);
    }
    private void Update()
    {
        if(Input.GetKeyDown("f"))
        {
            laserSight.gameObject.SetActive(!laserSight.gameObject.activeInHierarchy);
            crosshairs.gameObject.SetActive(!crosshairs.gameObject.activeInHierarchy);
        }
        if(Input.GetButtonDown("Fire1"))
        {
            FireGun();
        }
        if(Input.GetKeyDown("r"))
        {
            Reload();
        }
    }
    public void FireGun()
    {
        if(CurrentAmmoCount > 0)
        {
            CurrentAmmoCount--;
            CurrentAmmo.text = CurrentAmmoCount.ToString();
            StopAllCoroutines();
            StartCoroutine(MuzzleFlash());
            StartCoroutine(Fade());
            PlayGunFireAudio();
        }
        
    }
    private void PlayGunFireAudio()
    {
        // excluding sound at index 0
        int n = Random.Range(1, gunShotSounds.Length);
        audioSource.clip = gunShotSounds[n];
        audioSource.PlayOneShot(audioSource.clip);
        // move picked sound to index 0 so it's not picked next time
        gunShotSounds[n] = gunShotSounds[0];
        gunShotSounds[0] = audioSource.clip;
    }
    public void Reload()
    {
        if(ReserveAmmoCount > 0)
        {
            int reload = Mathf.Min(ReserveAmmoCount, MagSize);
            ReserveAmmoCount -= reload;
            CurrentAmmoCount = reload;
            CurrentAmmo.text = CurrentAmmoCount.ToString();
            ReserveAmmo.text = ReserveAmmoCount.ToString();
            audioSource.PlayOneShot(reloadSound);
        }
    }
    private void OnEnable()
    {
        AmmoDisplay.SetActive(true);
    }
    private void OnDisable()
    {
        AmmoDisplay.SetActive(false);
    }
    public void addAmmo(int num)
    {
        ReserveAmmoCount += num;
        ReserveAmmo.text = ReserveAmmoCount.ToString();
    }
    /*
    IEnumerator Emit()
    {
        ParticleSystem.EmitParams pem = new ParticleSystem.EmitParams();
        pem.position = ps.transform.position;
        pem.velocity = ps.transform.forward*(MaxRange/FadeTime);
        ps.Emit(pem, 1);
        yield return null;
    }
    private void OnParticleCollision(GameObject other)
    {
        Debug.Log(other.name);
    }*/
}
