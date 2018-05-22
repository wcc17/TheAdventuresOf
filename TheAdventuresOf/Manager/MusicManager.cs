using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class MusicManager
    {
        private static MusicManager instance;
        float volume = 1.0f;

        public bool changingSongs;
        public int gameState;

        public static MusicManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new MusicManager();
                }
                return instance;
            }
        }
        private MusicManager() { }

        public void InitializeMusicManager(int gameState) {
            //default is 0 (splash screen), but I'd rather set it explicitly
            this.gameState = gameState;
            MediaPlayer.IsRepeating = true;
            MediaPlayer.MediaStateChanged += HandleMediaStateChange;
        }

        public void ChangeState(int newGameState, int levelNumber) {

            gameState = newGameState;

            switch(gameState) {
                case GameManager.SPLASH_STATE:
                    MediaPlayer.Play(AssetManager.Instance.currentSong); //comment out to stop music
                    break;
                case GameManager.PRE_LEVEL_STATE:
                    StartMusic();
                    break;
                case GameManager.STORE_LEVEL_STATE:
                    StartMusic();
                    break;
            }
        }

        public void StartMusic() {
            changingSongs = true;
        }

        public void Update(GameTime gameTime) {
            if(AssetManager.Instance.currentSong != null) { 
                HandleMusicVolume(gameTime);
                //HandleRepeatDelay(gameTime);
            }
        }

        public void HandleMusicVolume(GameTime gameTime) {
            if (changingSongs) {
                if (volume > 0.0f) {
                    volume -= (float)(gameTime.ElapsedGameTime.TotalSeconds * 0.5f);
                    MediaPlayer.Volume = volume;
                }
            }

            if (volume <= 0.0f) {
                volume = 1.0f;
                changingSongs = false;

                MediaPlayer.Volume = volume;

                MediaPlayer.Play(AssetManager.Instance.currentSong); 
            }
        }

        public void HandleMediaStateChange(object sender, EventArgs e) {
            Logger.WriteToConsole("Media State Changed");
        }

        public void StopMusic() {
            MediaPlayer.Stop();
        }
    }
}
