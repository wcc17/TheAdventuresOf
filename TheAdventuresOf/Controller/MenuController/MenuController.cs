using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        //used to determine first time mouse button is clicked
        private MouseState oldState;

        public override void InitializeController() {
            base.InitializeController();
        }

        public override void HandleInput(List<Point> points) {
            #if __IOS__ || __ANDROID__
                base.HandleInput(points);
            #else
                HandleInputWindows();
            #endif
        }

        public virtual void HandleInputWindows() { }

        public bool CheckButtonInputWindows(MouseState mouseState, float mouseX, float mouseY, Button button)
        {
            //scale mouseX and mouseY to whatever the current resolution is set to
            Point unscaledPoint = new Point((int)mouseX, (int)mouseY);
            Point scaledPoint = ScreenManager.GetScaledInputPoint(unscaledPoint);
            mouseX = scaledPoint.X;
            mouseY = scaledPoint.Y;

            //Logger.WriteToConsole("-------------------------------");
            //Logger.WriteToConsole("button (x, y): (" + button.buttonPositionVector.X + ", " + button.buttonPositionVector.Y + ")");
            //Logger.WriteToConsole("MouseX Scaled: " + mouseX);
            //Logger.WriteToConsole("MouseY Scaled: " + mouseY);
            //Logger.WriteToConsole("-------------------------------");

            if (mouseState.LeftButton == ButtonState.Pressed && oldState.LeftButton == ButtonState.Released)
            {
                if ((mouseX >= button.buttonPositionVector.X
                        && mouseX <= (button.buttonPositionVector.X + button.buttonBounds.Width))
                        && (mouseY >= button.buttonPositionVector.Y
                        && mouseY <= (button.buttonPositionVector.Y + button.buttonBounds.Height)))
                {
                    return true;
                }
            }

            return false;
        }
    }
}
