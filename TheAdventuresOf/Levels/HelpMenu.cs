using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class HelpMenu
    {
        Vector2 basePositionVector = new Vector2(0, 0);
        public bool proceedToMenuState = false;

        public void LoadMenu()
        {
            Logger.WriteToConsole("Loading help menu");
        }

        public void Update(GameTime gameTime, HelpMenuController helpMenuController) {
            helpMenuController.Update(gameTime);

            if(helpMenuController.backButtonPressed) {
                proceedToMenuState = true;
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(AssetManager.Instance.blackBackgroundTexture, basePositionVector);
        }
    }
}
