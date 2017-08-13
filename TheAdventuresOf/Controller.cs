using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using UIKit;

namespace TheAdventuresOf
{
    public class Controller
    {
        //for slight vibrations when buttons are pressed
        public UIImpactFeedbackGenerator impactGenerator;

        public virtual void InitializeController() {
            impactGenerator = new UIImpactFeedbackGenerator(UIImpactFeedbackStyle.Light);
            impactGenerator.Prepare();
        }

        public virtual void HandleImpact(Button button, bool isPressed)
        {
            if (isPressed)
            {
                if (!button.initialPressHappened)
                {
                    button.initialPressHappened = true;
                    button.ShowPressedDown();
                    impactGenerator.ImpactOccurred();
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

    }
}
