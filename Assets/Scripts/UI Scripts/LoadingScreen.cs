using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadingScreen : MonoBehaviour 
{
    public static LoadingScreen SELF { get { return self; } }
    private static LoadingScreen self = null;
    private void Awake()
    {
        if(self != null)
        {
            DestroyImmediate(gameObject);
            return;
        }
        self = this;
        DontDestroyOnLoad(gameObject);
        gameObject.SetActive(false);
    }
    public void LoadLevel(int index)
    {
        gameObject.SetActive(true);
        StartCoroutine(LoadingProcess(index));
    }
    private IEnumerator LoadingProcess(int index)
    {
        yield return new WaitForEndOfFrame(); //Give a frame to render screen
        SceneManager.LoadScene(index);
        gameObject.SetActive(false);
    }

}
