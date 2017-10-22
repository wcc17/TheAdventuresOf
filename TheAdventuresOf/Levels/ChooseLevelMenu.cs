using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ChooseLevelMenu
    {
        Vector2 basePositionVector = new Vector2(0, 0);
        public bool proceedToNextState;

        public void LoadMenu(GraphicsDevice graphicsDevice)
        {
            AssetManager.Instance.LoadChooseLevelMenuAssets(graphicsDevice);
        }

        public void Update(GameTime gameTime, ChooseLevelMenuController chooseLevelMenuController)
        {
            //checking this inside here isn't strictly necessary
            //but since we have to do that with level objects, it will be good
            //to just go ahead and do it here
            //there might also be times where there are different parts of the 
            //menu to go somewhere
            if (chooseLevelMenuController.chooseButtonPressed)
            {
                proceedToNextState = true;
            }
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.GraphicsDevice.Clear(Color.White);
            //spriteBatch.Draw(AssetManager.Instance.mainMenuTexture, basePositionVector);
        }
    }
}
