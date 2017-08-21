using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoreText
    {
        public static float textFloatSpeed;
        public static float textDisappearSpeed;
        public static float textFontScale;
        public static float textPositionOffset;
        public bool isActive = true;

        float alpha = 1.0f;

        Vector2 positionVector;
        int pointsEarned;

        public ScoreText(float startX, float startY, int pointsEarned)
        {
            positionVector = new Vector2(startX-textPositionOffset, startY);
            this.pointsEarned = pointsEarned;
        }

        public void Update(GameTime gameTime) {
            //update position
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);

            alpha -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textDisappearSpeed);
            if (alpha <= 0.0f) {
                isActive = false;
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            //spriteBatch.DrawString(AssetManager.Instance.font, pointsEarned.ToString(), positionVector, Color.White * alpha);

            spriteBatch.DrawString(AssetManager.Instance.font,
                                   pointsEarned.ToString(), positionVector,
                                   Color.White * alpha, 0, new Vector2(0,0), 
                                   textFontScale, SpriteEffects.None, 0);
        }
    }
}
