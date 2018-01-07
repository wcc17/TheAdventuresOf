using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    class GameControllerWindows : GameController {

        public static Vector2 quitButtonPositionVector;
        Texture2D quitButtonTexture;
        Button quitButton;
        bool enterKeyPressed = false; //different from pauseButtonPressed to keep track of the enter keys last state
        ButtonState previousPauseButtonState = ButtonState.Released;

        public void InitializeTextures(Texture2D quitButtonTexture)
        {
            this.quitButtonTexture = quitButtonTexture;
        }

        public override void InitializeController() {
            base.InitializeController();

            quitButton = new Button(quitButtonTexture.Width,
                                                    quitButtonTexture.Height,
                                                    quitButtonPositionVector.X,
                                                    quitButtonPositionVector.Y);
        }

        public override void HandleInput(List<Point> points)
        {
            if (!isPaused)
            {
                //go left when one of the buttons is pressed
                if (GamePad.GetState(PlayerIndex.One).DPad.Left == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Left))
                {
                    isButtonPressed = true;
                    leftButtonPressed = true;
                }
                //go right when one of the buttons is pressed
                if (GamePad.GetState(PlayerIndex.One).DPad.Right == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Right))
                {
                    Logger.WriteToConsole("keyboard state: " + Keyboard.GetState().IsKeyDown(Keys.Right));
                    Logger.WriteToConsole("button state: " + (GamePad.GetState(PlayerIndex.One).DPad.Right == ButtonState.Pressed));
                    isButtonPressed = true;
                    rightButtonPressed = true;
                }
                //jump when one of these buttons is pressed
                if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Space))
                {
                    isButtonPressed = true;
                    jumpButtonPressed = true;
                }

                //handle pause button
                ButtonState pauseButtonState = GamePad.GetState(PlayerIndex.One).Buttons.Start;
                bool enterKeyState = Keyboard.GetState().IsKeyDown(Keys.Enter);
                if ((pauseButtonState == ButtonState.Pressed || enterKeyState == true) //make sure pause button is pressed
                    && ((previousPauseButtonState == ButtonState.Released) && (enterKeyPressed == false))) //make sure both enter key and start button weren't pressed in last frame
                {
                    handlePause();
                }

            }
            else if (isPaused)
            {
                //check if gamepad button is pressed or if enter key is pressed
                if ((GamePad.GetState(PlayerIndex.One).Buttons.Start == ButtonState.Pressed) || Keyboard.GetState().IsKeyDown(Keys.Enter))
                {
                    //make sure gamepad button and enter key wasn't pressed in the previous frame
                    if (previousPauseButtonState == ButtonState.Released && enterKeyPressed == false)
                    {
                        //unpause
                        handlePause();
                    }
                }

                //if already paused, and a button is pressed, quit to menu.
                //TODO: need a confirmation message here before returning to menu
                MouseState mouseState = Mouse.GetState();
                if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed 
                    || CheckButtonClicked(Mouse.GetState(), mouseState.X, mouseState.Y, quitButton))
                {
                    isButtonPressed = true;
                    quitButtonPressed = true;
                }
            }

            //remember current gamepad and keybaord state
            previousPauseButtonState = GamePad.GetState(PlayerIndex.One).Buttons.Start;
            enterKeyPressed = Keyboard.GetState().IsKeyDown(Keys.Enter);

        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);
            if(isPaused)
            {
                spriteBatch.Draw(quitButtonTexture, quitButtonPositionVector, Color.White);
            }
        }

        private void handlePause()
        {
            isButtonPressed = true;
            pauseButtonPressed = true;
        }
    }
}
