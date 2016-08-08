using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Content;

namespace TheAdventuresOf
{
	public static class FrameRate
	{
		static SpriteFont font;

		public static void LoadContent(ContentManager contentManager)
		{
			font = contentManager.Load<SpriteFont>("arial");
		}

		public static void Draw(SpriteBatch spriteBatch, GameTime gameTime)
		{
			float frameRate = 1 / (float)gameTime.ElapsedGameTime.TotalSeconds;
			spriteBatch.DrawString(font, frameRate.ToString(), new Vector2(0, 0), Color.White);
		}

	}
}

