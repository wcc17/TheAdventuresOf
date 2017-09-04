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
        SortedDictionary<int, Text> activeText;

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
            activeText = new SortedDictionary<int, Text>();
        }

        public void AddOrUpdateText(float x, float y, string stringText, int index)
        {
            Text text = new Text(x, y, stringText, index);
            activeText.Add(index, text);
        }

        public void RemoveText(int index)
        {
            if(activeText.ContainsKey(index))
            {
                activeText.Remove(index);
            }
        }

        public void RemoveAllText()
        {
            activeText.Clear();
        }
        
        public void Update(GameTime gameTime)
        {
            ScoringManager.Instance.Update(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            ScoringManager.Instance.Draw(spriteBatch);

            foreach (Text activeText in activeText.Values)
            {
                activeText.Draw(spriteBatch);
            }
        }

    }
}
