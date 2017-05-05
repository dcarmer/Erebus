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
        if(index >= SceneManager.sceneCountInBuildSettings) { Debug.Log("No More Levels"); index = 0; }
        gameObject.SetActive(true);
        StartCoroutine(LoadingProcess(index));
    }
    private IEnumerator LoadingProcess(int index)
    {
        yield return new WaitForEndOfFrame(); //Give a frame to render screen
        SceneManager.LoadScene(index);
        if(index == 0)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        gameObject.SetActive(false);
    }

}
