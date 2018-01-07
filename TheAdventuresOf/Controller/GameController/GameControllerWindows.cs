using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    class GameControllerWindows : GameController {

        bool pauseAlreadyPressed;
        Texture2D buttonOutlineTexture;
        Texture2D arrowOutlineTexture;

        public override void InitializeController() {
            base.InitializeController();
        }

        public void InitializeTextures()
        {

        }

        public override void HandleInput(List<Point> points)
        {
            if(!pauseAlreadyPressed)
            {
                HandleInputGamePlay(points);
            } else if(!isButtonPressed)
            {
                pauseAlreadyPressed = false;
            }
        }

        public void HandleInputGamePlay(List<Point> points) {
           
            if(!isPaused)
            {
                if (GamePad.GetState(PlayerIndex.One).DPad.Left == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Left))
                {
                    isButtonPressed = true;
                    leftButtonPressed = true;
                }

                if (GamePad.GetState(PlayerIndex.One).DPad.Right == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Right))
                {
                    isButtonPressed = true;
                    rightButtonPressed = true;
                }

                if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Space))
                {
                    isButtonPressed = true;
                    jumpButtonPressed = true;
                }

                if (GamePad.GetState(PlayerIndex.One).Buttons.Start == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Enter))
                {
                    isButtonPressed = true;
                    pauseButtonPressed = true;
                }
            } else
            {
                //handle quit button
            }
            

            //TODO: handle pause button on windows
        }
    }
}
