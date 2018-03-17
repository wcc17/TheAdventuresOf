using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Text
    {
        public Color color;

        public static float textFloatSpeed;
        public static float textDisappearSpeed;
        public static float textPositionOffset;
        public bool isActive = true;

        public int index;
        public float alpha = 1.0f;
        public Vector2 positionVector;          //where text shows up
        public float startX, endX; //where player needs to be for text to show (if applicable)
        public string text;
        public float scale;

        public Text(float x, float y, string text, Color color, float scale, int index = -1, float startX = -1, float endX = -1)
        {
            positionVector = new Vector2(x-textPositionOffset, y);
            this.text = text;
            this.color = color;
            this.index = index;
            this.startX = startX;
            this.endX = endX;
            this.scale = scale;
        }

        public virtual void Update(GameTime gameTime)
        {
            alpha -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textDisappearSpeed);
            if (alpha <= 0.0f)
            {
                isActive = false;
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   text, positionVector + new Vector2(-1 * scale, -1 * scale),
                                   Color.Black * alpha, 0, new Vector2(0, 0),
                                   scale, SpriteEffects.None, 0);
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   text, positionVector + new Vector2(1 * scale, -1 * scale),
                                   color * alpha, 0, new Vector2(0,0), 
                                   scale, SpriteEffects.None, 0);

        }
    }
}
