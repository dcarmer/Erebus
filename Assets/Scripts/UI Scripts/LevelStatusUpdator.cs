using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

[RequireComponent(typeof(Text))]
public class LevelStatusUpdator : MonoBehaviour 
{
    private Text LevelStatus = null;
    private void Awake()
    {
        LevelStatus = GetComponent<Text>();
    }
    private void OnEnable()
    {
        SceneManager.activeSceneChanged += UpdateStatus;
    }
    private void OnDisable()
    {
        SceneManager.activeSceneChanged -= UpdateStatus;
    }
    private void UpdateStatus(Scene from, Scene to)
    {
        LevelStatus.text = "Level " + to.buildIndex;
    }
}
