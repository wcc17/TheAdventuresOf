using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Logger
    {
        private const float INITIAL_Y_POS = ScreenManager.VIRTUAL_SCREEN_HEIGHT - 400;
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
            positionVector = new Vector2(20, INITIAL_Y_POS);
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
            if(TheAdventuresOf.showDebug) {
                foreach (KeyValuePair<string, string> debugString in debugStrings)
                {
                    TextManager.Instance.DrawOutlinedString(spriteBatch,
                                                            debugString.Key + ": " + debugString.Value,
                                                            positionVector,
                                                            Color.White,
                                                            0.6f);

                    positionVector.Y -= 24;
                }

                positionVector.Y = INITIAL_Y_POS;
            }
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
