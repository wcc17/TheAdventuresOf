using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class TextManager
    {
        private static TextManager instance;
        SortedDictionary<int, Text> activeIndexedText;
        List<Text> activeText;

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

        public void AddOrUpdateIndexedText(float x, float y, string stringText, int index)
        {
            Text text = new Text(x, y, stringText, index);
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
    }
}
