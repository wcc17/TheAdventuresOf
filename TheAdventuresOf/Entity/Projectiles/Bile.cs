using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		public static float groundLevel;
		bool isFalling;

		public Bile()
		{
			entityBounds.Width = AssetManager.Instance.bileTexture.Width;
			entityBounds.Height = AssetManager.Instance.bileTexture.Height;

			isFalling = true;
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			base.Update(gameTime, buttonPressed);

			Move(gameTime);
		}

		public override void Move(GameTime gameTime, int direction = 0)
		{
			if (isFalling)
			{
				if (moveLeft)
				{
					positionVector.X -= (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				if (moveRight)
				{
					positionVector.X += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				positionVector.Y += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
				UpdateEntityBounds();

				if (positionVector.Y >= groundLevel)
				{
					positionVector.Y = groundLevel;
					isFalling = false;
				}
			}
		}
	}
}

