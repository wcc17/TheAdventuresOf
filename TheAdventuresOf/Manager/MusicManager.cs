using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class MusicManager
    {
        public bool changingSongs;
        public int gameState;

        float volume = 1.0f;
        Song currentSong;

        public MusicManager(int gameState)
        {
            //default is 0 (splash screen), but I'd rather set it explicitly
            this.gameState = gameState;

            MediaPlayer.IsRepeating = true; 
            MediaPlayer.MediaStateChanged += HandleMediaStateChange;
        }

        public void ChangeState(int newGameState) {

            gameState = newGameState;

            switch(gameState) {
                case GameManager.SPLASH_STATE:
                    currentSong = AssetManager.Instance.mainMenuSong;
                    MediaPlayer.Play(currentSong);
                    break;
                case GameManager.PRE_LEVEL_STATE:
                    currentSong = null; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                    MediaPlayer.Stop();
                    break;
                case GameManager.LEVEL_STATE:
                    changingSongs = true;
                    currentSong = AssetManager.Instance.levelOneSong;
                    break;
                case GameManager.STORE_LEVEL_STATE:
                    currentSong = null; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                    MediaPlayer.Stop();
                    break;
            }
        }

        public void Update(GameTime gameTime) {
            if(currentSong != null) { //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
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

                MediaPlayer.Play(currentSong);
            }
        }

        public void HandleMediaStateChange(object sender, EventArgs e) {
            Logger.WriteToConsole("Media State Changed");
        }
    }
}
