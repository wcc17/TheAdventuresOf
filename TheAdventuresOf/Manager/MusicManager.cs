using System;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class MusicManager
    {
        int gameState;
        //Song currentSong;

        public MusicManager(int gameState)
        {
            //default is 0 (splash screen), but I'd rather set it explicitly
            this.gameState = gameState;
            MediaPlayer.IsRepeating = true;
        }

        public void ChangeState(int gameState) {

            switch(gameState) {
                case GameManager.SPLASH_STATE:
                    MediaPlayer.Play(AssetManager.Instance.menuSong);
                    break;
                case GameManager.MENU_STATE:
                    //TODO: ensure that menu music already started playing in SPLASH_STATE
                    //MediaPlayer.Play(AssetManager.Instance.menuSong);
                    break;
                case GameManager.LEVEL_STATE:
                    MediaPlayer.Play(AssetManager.Instance.levelOneSong);
                    break;
            }
        }

        //TODO: need some sort of loading screen in GameManager where this can happen
        //until then, songs will just change abruptly because theres no where to perform the fade out
        public void ChangeSong(Song nextSong) {
            //TODO: fade from one song to the next? or just fade out previous song
        }
    }
}
