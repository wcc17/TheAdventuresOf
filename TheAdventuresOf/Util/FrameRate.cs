using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Content;

namespace TheAdventuresOf
{
	public static class FrameRate
	{
        static int timesDropped;

		public static void Update(GameTime gameTime)
		{
			float frameRate = 1 / (float)gameTime.ElapsedGameTime.TotalSeconds;
            Logger.Instance.AddOrUpdateValue("FrameRate", frameRate.ToString());

            HandleFPSDropNotification(frameRate);
		}

        static void HandleFPSDropNotification(float frameRate) {
            if (frameRate <= 59.5f) {
                Logger.WriteToConsole("Frame rate dropped below 60: " + frameRate.ToString());

                timesDropped++;
                Logger.Instance.AddOrUpdateValue("FPS Drops: ", timesDropped.ToString());
            }
        }

	}
}

