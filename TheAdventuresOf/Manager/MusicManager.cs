﻿using System;
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
        Song currentSong;

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
                    currentSong = AssetManager.Instance.mainMenuSong;
                    MediaPlayer.Play(currentSong); //TODO: comment out to stop music
                    break;
                case GameManager.PRE_LEVEL_STATE:
                    currentSong = null; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                    MediaPlayer.Stop();
                    break;
                case GameManager.LEVEL_STATE:
                    changingSongs = true;
                    switch(levelNumber)
                    {
                        case 1:
                            currentSong = AssetManager.Instance.levelOneSong;
                            break;
                        case 2:
                            currentSong = AssetManager.Instance.levelOneSong;
                            break;
                        case 3:
                            currentSong = AssetManager.Instance.levelOneSong; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                            break;
                        case 4:
                            currentSong = AssetManager.Instance.levelOneSong; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                            break;
                        case 5:
                            currentSong = AssetManager.Instance.levelFiveSong; //TODO: MUSIC FIX: THIS IS A BANDAID. no song here yet anyway
                            break;
                    }
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

                MediaPlayer.Play(currentSong); //TODO: comment to stop music
            }
        }

        public void HandleMediaStateChange(object sender, EventArgs e) {
            Logger.WriteToConsole("Media State Changed");
        }

        public void PlayGameOverSoundEffect() {
            MediaPlayer.Stop();
            AssetManager.Instance.gameOverSoundEffect.Play();
        }
    }
}
