using UnityEngine;

public class TitleMenuController : MonoBehaviour 
{
    [SerializeField] private CanvasGroup TitlePanel;
    [SerializeField] private CanvasGroup OptionsPanel;

    public void StartGame()
    {
        LoadingScreen.SELF.LoadLevel(1);
    }
    public void EnterOptionsPanel()
    {
        OptionsPanel.alpha = 1;
        OptionsPanel.interactable = true;
        OptionsPanel.blocksRaycasts = true;

        TitlePanel.alpha = 0;
        TitlePanel.interactable = false;
        TitlePanel.blocksRaycasts = false;
    }
    public void LeaveOptionsPanel()
    {
        TitlePanel.alpha = 1;
        TitlePanel.interactable = true;
        TitlePanel.blocksRaycasts = true;

        OptionsPanel.alpha = 0;
        OptionsPanel.interactable = false;
        OptionsPanel.blocksRaycasts = false;
    }
    public void ExitGame()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
}
