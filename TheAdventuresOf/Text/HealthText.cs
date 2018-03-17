using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class HealthText : Text
    {
        public HealthText(float startX, float startY, string text, Color color, int index) : base(startX, startY, text, color, index) { }

        public override void Update(GameTime gameTime)
        {
            positionVector.X += (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            base.Update(gameTime);
        }
    }
}
