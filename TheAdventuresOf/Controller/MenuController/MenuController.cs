using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        public override void InitializeController() {
            base.InitializeController();
        }

        public override void HandleInput(List<Point> points) {
            #if __IOS__ || __ANDROID__
                base.HandleInput(points);
            #else
                HandleInputWindows(points);
            #endif
        }

        public void HandleInputWindows()
        {
            //doesn't matter right now
            //if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Enter))
            //{
            //    isButtonPressed = true;
            //    playButtonPressed = true;
            //}
        }
    }
}
