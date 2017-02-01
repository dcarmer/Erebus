using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/***
 * This Class is a manual implimentation of spatialization,
 *  intended to supplement Unity's lack of support 
 *  for multiple AudioListeners
 */
[RequireComponent(typeof(AudioSource))]
public class AudioController : MonoBehaviour 
{
    public Transform[] listeners;
    private float baseVolume;
    private AudioSource src;
    void Start () 
    {
        src = GetComponent<AudioSource>();
        baseVolume = src.volume;
        Debug.Assert(listeners.Length > 0);
    }
    //TODO = ADD Volume Optimization(LERP?)
    //TODO = ADD SpatialBlend Support
    //TODO = ADD Spread Support
    //TODO = ADD Reverb Support
    //TODO = ADD Doppler Support(velocityUpdateMode)

    void Update () //Chooses Closest Listener to set volume
    {
        float dist = Mathf.Infinity, d; 
        for(int i=0;i<listeners.Length;i++)
        {
            d = (listeners[i].position - transform.position).sqrMagnitude;
            if (d < dist) { dist = d; }
        }
        dist = Mathf.Sqrt(dist);
        switch(src.rolloffMode)
        {
            case AudioRolloffMode.Linear:
                if (dist <= src.minDistance) { src.volume = baseVolume; }
                else if (dist >= src.maxDistance) { src.volume = 0; }
                else
                {
                    src.volume = baseVolume * ((src.maxDistance - dist) / (src.maxDistance - src.minDistance));
                }
                break;
            case AudioRolloffMode.Logarithmic: // = 1/x
                if (dist <= src.minDistance) { src.volume = baseVolume; }
                else
                {
                    src.volume = baseVolume*(src.minDistance / Mathf.Min(dist, src.maxDistance));
                }
                break;
            default: case AudioRolloffMode.Custom: //Min Controlled By Curve
                src.volume = src.GetCustomCurve(AudioSourceCurveType.CustomRolloff).Evaluate(dist / src.maxDistance);
                break;
        }
    }
}
