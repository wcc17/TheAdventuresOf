﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{
    public class MainMenu
    {
        Vector2 basePositionVector = new Vector2(0, 0);
        public bool proceedToGameState = false;
        public bool proceedToChooseLevelState = false;

        public void LoadMenu(GraphicsDevice graphicsDevice) {
            AssetManager.Instance.LoadMainMenuAssets(graphicsDevice);
        }

        public void Update(GameTime gameTime, MainMenuController mainMenuController) {
            //checking this inside here isn't strictly necessary
            //but since we have to do that with level objects, it will be good
            //to just go ahead and do it here
            //there might also be times where there are different parts of the 
            //menu to go somewhere
            if(mainMenuController.playButtonPressed) {
                proceedToGameState = true; 
            } else if(mainMenuController.chooseLevelButtonPressed) {
                proceedToChooseLevelState = true;
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            //TODO: should I assign menuTexture to a local variable first?
            spriteBatch.Draw(AssetManager.Instance.mainMenuTexture, basePositionVector);
        }
    }
}
