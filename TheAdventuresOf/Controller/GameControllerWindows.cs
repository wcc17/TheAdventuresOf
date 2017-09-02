using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    class GameControllerWindows : GameController {

        public override void InitializeController() {
            base.InitializeController();
        }

        public override void HandleInput(Point point) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Left))
            {
                isButtonPressed = true;
                leftButtonPressed = true;
            }

            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Right))
            {
                isButtonPressed = true;
                rightButtonPressed = true;
            }

            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Space))
            {
                isButtonPressed = true;
                upButtonPressed = true;
            }
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            leftButtonPressed = false;
            rightButtonPressed = false;
            upButtonPressed = false;
        }

        //handleimpacts
        //draw
    }
}
