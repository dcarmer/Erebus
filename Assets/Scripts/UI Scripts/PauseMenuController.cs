using UnityEngine;

public class PauseMenuController : MonoBehaviour 
{
    [SerializeField] private CanvasGroup PausePanel;
    [SerializeField] private CanvasGroup OptionsPanel;

    public static PauseMenuController SELF { get { return self; } }
    private static PauseMenuController self = null;
    private void Awake()
    {
        if (self != null)
        {
            DestroyImmediate(gameObject);
            return;
        }
        self = this;
        DontDestroyOnLoad(gameObject);
        gameObject.SetActive(false);
    }


    public void ResumeGame()
    {
        //Unpause Here
    }
    public void ReturnToTitleMenu()
    {
        LoadingScreen.SELF.LoadLevel(0);
    }
    public void EnterOptionsPanel()
    {
        OptionsPanel.alpha = 1;
        OptionsPanel.interactable = true;
        OptionsPanel.blocksRaycasts = true;

        PausePanel.alpha = 0;
        PausePanel.interactable = false;
        PausePanel.blocksRaycasts = false;
    }
    public void LeaveOptionsPanel()
    {
        PausePanel.alpha = 1;
        PausePanel.interactable = true;
        PausePanel.blocksRaycasts = true;

        OptionsPanel.alpha = 0;
        OptionsPanel.interactable = false;
        OptionsPanel.blocksRaycasts = false;
    }
}
