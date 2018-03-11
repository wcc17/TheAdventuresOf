using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class Controller
    {
        //used to determine first time mouse button is clicked
        private MouseState oldState;
        private bool isLocked = false;

        public VibrationController vibrationController;

        public virtual void InitializeController() {
            vibrationController = new VibrationController();
        }

        public virtual void HandleImpact(Button button, bool isPressed)
        {
            if (isPressed)
            {
                if (!button.initialPressHappened)
                {
                    button.initialPressHappened = true;
                    button.ShowPressedDown();
                    vibrationController.ImpactOccured();
                }
            }
            else
            {
                if (button.initialPressHappened)
                {
                    button.ShowPressedUp();
                    button.initialPressHappened = false;
                }
            }
        }

        public virtual void HandleInput(List<Point> points) {
            if(!isLocked) {
				foreach(Point point in points) {
					HandleSingleInput(point);
				}
            }
        }

        //moved this and CheckMouseInsideButton to Controller as both game and menu use them
        public virtual bool CheckButtonClicked(MouseState mouseState, float mouseX, float mouseY, Button button)
        {
            if (mouseState.LeftButton == ButtonState.Pressed && oldState.LeftButton == ButtonState.Released)
            {
                return CheckMouseInsideButton(mouseX, mouseY, button);
            }

            return false;
        }

        public virtual bool CheckMouseInsideButton(float mouseX, float mouseY, Button button)
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

            if ((mouseX >= button.buttonPositionVector.X
                    && mouseX <= (button.buttonPositionVector.X + button.buttonBounds.Width))
                    && (mouseY >= button.buttonPositionVector.Y
                    && mouseY <= (button.buttonPositionVector.Y + button.buttonBounds.Height)))
            {
                return true;
            }

            return false;

        }

        public virtual void Lock()
        {
            isLocked = true;
        }

        public virtual void Unlock()
        {
            isLocked = false;
        }

        public virtual void ResetButtonPressedValues(){ }
        public virtual void HandleImpacts() { }
        public virtual void Draw(SpriteBatch spriteBatch) { }
        public virtual void HandleSingleInput(Point point) { } 
        public virtual void Update(GameTime gameTime) { }
    }
}
