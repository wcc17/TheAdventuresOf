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
        public Vector2 positionVector;
        public string text;

        public Text(float startX, float startY, string text, int index)
        {
            positionVector = new Vector2(startX-textPositionOffset, startY);
            this.text = text;
            this.index = index; //not always needed (for scoring espec)
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
