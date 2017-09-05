using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Text
    {
        public static float textDisappearSpeed;
        public static float textFontScale;
        public static float textPositionOffset;
        public bool isActive = true;

        public int index;
        public float alpha = 1.0f;
        public Vector2 positionVector;          //where text shows up
        public Vector2 thresholdPositionVector; //where player needs to be for text to show (if applicable)
        public string text;

        public Text(float x, float y, string text, int index = -1, float startX = -1, float endX = -1)
        {
            positionVector = new Vector2(x-textPositionOffset, y);
            this.text = text;

            this.index = index; //not always needed (for scoring espec)
            thresholdPositionVector = new Vector2(startX, endX); //not always needed (for scoring espec)
        }

        public virtual void Update(GameTime gameTime) { }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   text, positionVector,
                                   Color.White * alpha, 0, new Vector2(0,0), 
                                   textFontScale, SpriteEffects.None, 0);
        }
    }
}
