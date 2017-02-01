using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class LOS : MonoBehaviour 
{
    public MeshFilter test; 
    void Start () 
    {
    }
    void Update () 
    {
        Mesh visMesh = new Mesh();
        Vector3 pos = transform.position;
        Collider[] near = Physics.OverlapSphere(pos,5);
        List<Vector3> vertices = new List<Vector3>();
        List<int> indecies = new List<int>(); int index = 0;
        List<Vector3> normals = new List<Vector3>();
        List<Vector2> textues = new List<Vector2>();
        for (int i = 0; i < near.Length; i++)
        {
            GameObject obstacle = near[i].gameObject;

            Vector3[] verts = obstacle.GetComponent<MeshFilter>().mesh.vertices.Select(v => obstacle.transform.TransformPoint(v)).ToArray();
            for(int j = 0;j < verts.Length; j++)
            {
                Vector3 dir = verts[j] - pos;
                if (!Physics.Raycast(pos, dir, dir.magnitude-.1f))
                {
                    Debug.DrawRay(pos, dir, Color.green);
                    if(verts.Length%3 ==0) //Starting Triangle
                    {
                        vertices.Add(pos);
                        vertices.Add(verts[j]);
                        indecies.Add(index++); indecies.Add(index++);
                    }
                    else //Completing Triangle
                    {
                        vertices.Add(verts[j]);
                        indecies.Add(index++);
                    }
                    
                }
            }
        }
        visMesh.vertices = vertices.ToArray();
        visMesh.triangles = indecies.ToArray();
        test.mesh = visMesh;
        /*test.mesh = new Mesh();
        test.mesh.vertices = new Vector3[]{ new Vector3(0,0,0),new Vector3(1, 0, 0),new Vector3(0, 0, 1)};
        test.mesh.triangles = new int[] { 0, 2, 1 };
        test.mesh.normals = new Vector3[] { new Vector3(0, 1, 0), new Vector3(0, 1, 0), new Vector3(0, 1, 0) };
        test.mesh.uv = new Vector2[] { new Vector2(0, 0), new Vector2(1, 0), new Vector2(0, 1) };*/
    }
}
