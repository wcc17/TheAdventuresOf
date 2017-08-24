using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class DebugInfoPrinter
    {
        static SortedDictionary<string, string> debugStrings;
        Vector2 positionVector;

        public DebugInfoPrinter()
        {
            debugStrings = new SortedDictionary<string, string>();
            positionVector = new Vector2(20, 10);
        }

        public static void AddOrUpdateValue(String key, String value) {
            if(debugStrings.ContainsKey(key)) {
                debugStrings[key] = value;   
            } else {
                debugStrings.Add(key, value);
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            foreach(KeyValuePair<string, string> debugString in debugStrings) {
                //spriteBatch.DrawString(AssetManager.Instance.font, 
                                       //debugString.Key + ": " + debugString.Value, 
                                       //positionVector, Color.White);

                spriteBatch.DrawString(AssetManager.Instance.font,
                                       debugString.Key + ": " + debugString.Value,
                                       positionVector,
                                       Color.White,
                                       0,
                                       new Vector2(0, 0),
                                       0.6f, 
                                       SpriteEffects.None, 
                                       0);

                positionVector.Y += 24;
            }

            positionVector.Y = 6;
        }
    }
}
