using UnityEngine;

public class PauseMenuController : MonoBehaviour 
{
    [SerializeField] private CanvasGroup PausePanel;
    [SerializeField] private CanvasGroup OptionsPanel;

    private CanvasGroup PauseMenu = null;

    private void Awake()
    {
        PauseMenu = GetComponent<CanvasGroup>();
    }
    public void togglePause()
    {
        if(PauseMenu == null) { PauseMenu = GetComponent<CanvasGroup>(); }

        if(Time.timeScale == 0)
        {
            Time.timeScale = 1;
            PauseMenu.alpha = 0;
            PauseMenu.interactable = false;
            PauseMenu.blocksRaycasts = false;
        }
        else
        {
            Time.timeScale = 0;
            PauseMenu.alpha = 1;
            PauseMenu.interactable = true;
            PauseMenu.blocksRaycasts = true;
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
    }
    private void OnEnable()
    {
        Time.timeScale = 0;
        PauseMenu.alpha = 1;
        PauseMenu.interactable = true;
        PauseMenu.blocksRaycasts = true;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
    private void OnDisable()
    {
        Time.timeScale = 1;
        PauseMenu.alpha = 0;
        PauseMenu.interactable = false;
        PauseMenu.blocksRaycasts = false;
    }
    public void ResumeGame()
    {
        //gameObject.SetActive(false);
        enabled = false;
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
