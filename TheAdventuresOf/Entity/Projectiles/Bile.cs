using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		public static float groundLevel;
		float leftRightSpeedMultiplier = 1.0f;
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
					positionVector.X -= ( (speed * (leftRightSpeedMultiplier))  * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				if (moveRight)
				{
					positionVector.X += ( (speed * (leftRightSpeedMultiplier)) * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				//decrease the amount of X change over time as object gets closer to the ground
				if (leftRightSpeedMultiplier > 0.0f)
				{
					leftRightSpeedMultiplier -= 0.025f;
				}

				positionVector.Y += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);

				UpdateEntityBounds();

				if (positionVector.Y >= groundLevel)
				{
					positionVector.Y = groundLevel;
					leftRightSpeedMultiplier = 1.0f;
					isFalling = false;
				}
			}
		}
	}
}

