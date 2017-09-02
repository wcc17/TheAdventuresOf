using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Controller
    {
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

        public virtual void ResetButtonPressedValues(){ }
        public virtual void HandleInput(Point point) { }
        public virtual void HandleImpacts() { }
        public virtual void Draw(SpriteBatch spriteBatch) { }
        public virtual void HandleInputMobile(Point point) { }
        public virtual void HandleInputWindows() { }
    }
}
