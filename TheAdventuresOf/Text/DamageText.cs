using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class DamageText : Text
    {
        public DamageText(float startX, float startY, string text, Color color, float scale, int index) : base(startX, startY, text, color, scale, index) { }

        public override void Update(GameTime gameTime)
        {
            positionVector.X += (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            base.Update(gameTime);
        }
    }
}
