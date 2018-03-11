using System;
namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class SoundManager
    {
        private static SoundManager instance;

        public static SoundManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SoundManager();
                }
                return instance;
            }
        }
        private SoundManager() { }

        public void PlayGameOverSoundEffect()
        {
            MediaPlayer.Stop();
            AssetManager.Instance.gameOverSoundEffect.Play();
        }
    }
}
