using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class FloatingText : Text
    {
        public static float textFloatSpeed;

        public FloatingText(float startX, float startY, string text, int index) : base(startX, startY, text, index) { }

        public override void Update(GameTime gameTime)
        {
            alpha -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textDisappearSpeed);
            if (alpha <= 0.0f)
            {
                isActive = false;
            }
        }
    }
}
