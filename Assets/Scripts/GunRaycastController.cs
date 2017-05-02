using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunRaycastController : MonoBehaviour 
{
    public LineRenderer lr;
    public LineRenderer laserSight;
    public Light l;
    public ParticleSystem ps;
    public float FadeTime = 1;
    public float MaxRange = 20;
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
        }
        if(Input.GetButtonDown("Fire1"))
        {
            FireGun();
        }
    }
    public void FireGun()
    {
        StopAllCoroutines();
        StartCoroutine(MuzzleFlash());
        StartCoroutine(Fade());
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
