using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class MusicManager
    {
        bool repeatDelay; //delay between song repeats
        Timer repeatTimer;
        float repeatTimeLimit = 2.0f; //TODO: THIS SHOULD BE LOADED IN XML

        public bool changingSongs;
        public int gameState;

        float volume = 1.0f;
        Song currentSong;

        public MusicManager(int gameState)
        {
            repeatTimer = new Timer(repeatTimeLimit);

            //default is 0 (splash screen), but I'd rather set it explicitly
            this.gameState = gameState;

            //MediaPlayer.IsRepeating = true; uncomment this if i get rid of the repeatDelay timer
            MediaPlayer.MediaStateChanged += HandleMediaStateChange;
        }

        public void ChangeState(int newGameState) {

            gameState = newGameState;

            switch(gameState) {
                case GameManager.SPLASH_STATE:
                    currentSong = AssetManager.Instance.menuSong;
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
                HandleRepeatDelay(gameTime);
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

        public void HandleRepeatDelay(GameTime gameTime) {
            if(repeatDelay && !changingSongs) {
                bool timeUp = repeatTimer.IsTimeUp(gameTime.ElapsedGameTime);
                if (timeUp)
                {
                    repeatTimer.Reset();
                    repeatDelay = false;

                    MediaPlayer.Play(currentSong);
                }
            }
        }

        public void HandleMediaStateChange(object sender, EventArgs e) {
            Logger.WriteToConsole("Media State Changed");
            if(MediaPlayer.State == MediaState.Stopped && !changingSongs) {
                repeatDelay = true;
            }
        }


    }
}
