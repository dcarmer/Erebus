using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelDescend : MonoBehaviour 
{
    public void Descend()
    {
        LoadingScreen.SELF.LoadLevel(SceneManager.GetActiveScene().buildIndex + 1);
    }
}
