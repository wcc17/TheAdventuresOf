using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class TextManager
    {
        public const float DEFAULT_TEXT_SCALE = 0.7f;
        private static TextManager instance;
        SortedDictionary<int, Text> activeIndexedText;
        List<Text> activeText;
        Vector2 zeroPositionVector = new Vector2(0, 0);

        public static TextManager Instance {
            get
            {
                if (instance == null)
                {
                    instance = new TextManager();
                }
                return instance;
            }
        }

        private TextManager()
        {
            activeText = new List<Text>();
            activeIndexedText = new SortedDictionary<int, Text>();
        }

        public void AddOrUpdateIndexedText(float x, float y, string stringText, Color color, float scale, int index)
        {
            Text text = new Text(x, y, stringText, color, scale, index);
            AddOrUpdateIndexedText(text);
        }

        public void AddOrUpdateIndexedText(Text text) {
            if(!activeIndexedText.ContainsKey(text.index)) {
                activeIndexedText.Add(text.index, text);
            } else {
                activeIndexedText[text.index] = text;
            }
        }

        public void AddText(Text text) {
            activeText.Add(text);
        }

        public void RemoveText(int index)
        {
            if(activeIndexedText.ContainsKey(index))
            {
                activeIndexedText.Remove(index);
            }
        }

        public void RemoveAllText()
        {
            activeIndexedText.Clear();
            activeText.Clear();
        }
        
        public void Update(GameTime gameTime)
        {
            foreach (Text text in activeText)
            {
                text.Update(gameTime);
            }

            activeText.RemoveAll(inactiveScoreText => inactiveScoreText.isActive == false);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (Text text in activeIndexedText.Values)
            {
                text.Draw(spriteBatch);
            }

            foreach (Text text in activeText)
            {
                text.Draw(spriteBatch);
            }
        }

        public void DrawOutlinedString(SpriteBatch spriteBatch, String text, Vector2 textPositionVector, Color color, float scale, float alpha = 1.0f) {
            Color outlineColor;
            if(!color.Equals(Color.Black)) {
                outlineColor = Color.Black;
            } else {
                outlineColor = Color.White;
            }

            outlineColor *= alpha;
            color *= alpha;

            float scaledOffset = 2 * scale;
            //declaring new variables is more clear, would have to use instantiate new vector for each either way
            Vector2 positionVector1 = new Vector2(scaledOffset, scaledOffset);
			Vector2 positionVector4 = new Vector2(-scaledOffset, -scaledOffset);
			Vector2 positionVector3 = new Vector2(-scaledOffset, scaledOffset);
            Vector2 positionVector2 = new Vector2(scaledOffset, -scaledOffset);

            DrawString(spriteBatch, text, textPositionVector + positionVector1, outlineColor, scale);
            DrawString(spriteBatch, text, textPositionVector + positionVector2, outlineColor, scale);
            DrawString(spriteBatch, text, textPositionVector + positionVector3, outlineColor, scale);
            DrawString(spriteBatch, text, textPositionVector + positionVector4, outlineColor, scale);
            DrawString(spriteBatch, text, textPositionVector, color, scale);
        }

        public void DrawString(SpriteBatch spriteBatch, String text, Vector2 textPositionVector, Color color, float scale) {
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   text,
                                   textPositionVector,
                                   color,
                                   0,
                                   zeroPositionVector,
                                   scale,
                                   SpriteEffects.None,
                                   0);
        }
    }
}
