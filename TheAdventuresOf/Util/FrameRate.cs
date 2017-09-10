using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Content;

namespace TheAdventuresOf
{
	public static class FrameRate
	{
		public static void Update(GameTime gameTime)
		{
			float frameRate = 1 / (float)gameTime.ElapsedGameTime.TotalSeconds;

            Logger.Instance.AddOrUpdateValue("FrameRate", frameRate.ToString());
		}

	}
}

