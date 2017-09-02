using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Logger
    {
        private static Logger instance;

        static SortedDictionary<string, string> debugStrings;
        Vector2 positionVector;

        public static Logger Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Logger();
                }
                return instance;
            }
        }

        private Logger()
        {
            debugStrings = new SortedDictionary<string, string>();
            positionVector = new Vector2(20, 10);
        }

        public void AddOrUpdateValue(String key, String value)
        {
            if (debugStrings.ContainsKey(key))
            {
                debugStrings[key] = value;
            }
            else
            {
                debugStrings.Add(key, value);
            }
        }

        public void DrawToScreen(SpriteBatch spriteBatch)
        {
            foreach (KeyValuePair<string, string> debugString in debugStrings)
            {
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

        public static void WriteToConsole(String message)
        {
            #if __IOS__ || __ANDROID__
                Console.WriteLine(message);
            #else
                Debug.WriteLine(DateTime.UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff") + ": " + message);
            #endif
        }
    }
}
