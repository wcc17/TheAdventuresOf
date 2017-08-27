using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    public class MainMenu
    {
        Vector2 basePositionVector = new Vector2(0, 0);
        public bool proceedToNextState = false;

        public void LoadMenu(GraphicsDevice graphicsDevice) {
            AssetManager.Instance.LoadMenuAssets(graphicsDevice);
        }

        public void Update(GameTime gameTime, MenuController menuController) {
            //checking this inside here isn't strictly necessary
            //but since we have to do that with level objects, it will be good
            //to just go ahead and do it here
            //there might also be times where there are different parts of the 
            //menu to go somewhere
            if(menuController.playButtonPressed) {
                proceedToNextState = true; 
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(AssetManager.Instance.menuTexture, basePositionVector);
        }
    }
}
