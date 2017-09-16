using System;
using System.Collections.Generic;
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

        public virtual void HandleInput(List<Point> points) {
            if (points.Count > 0)
            {
                for (int i = 0; i < points.Count; i++)
                {
                    //TODO: is checking multitouch limit necessary? Its already being checked in ScreenManager.GetTouchInput
                    if (i < ScreenManager.MULTI_TOUCH_LIMIT)
                    {
                        HandleSingleInput(points[i]);
                    }
                }
            }
        }

        public virtual void ResetButtonPressedValues(){ }
        public virtual void HandleImpacts() { }
        public virtual void Draw(SpriteBatch spriteBatch) { }
        public virtual void HandleSingleInput(Point point) { } 
        public virtual void Update(GameTime gameTime) { }
    }
}
