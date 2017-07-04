using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		public static float groundLevel;
		public Vector2 originVector = new Vector2();

		float parabolaX = 0f;
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
				int directionMultiplier = 1;
				if (moveRight)
				{
					directionMultiplier = -1;
				}

				float time = (float)gameTime.ElapsedGameTime.TotalSeconds;

				//y = ax^2 + b
				parabolaX += ((time * speed) * directionMultiplier);
				positionVector.X = parabolaX + originVector.X;
				positionVector.Y = (float)(Math.Pow(-(0.2*parabolaX), 2)) + originVector.Y;

				UpdateEntityBounds();

                //Console.WriteLine

				if (positionVector.Y >= groundLevel)
				{
					positionVector.Y = groundLevel;
					parabolaX = 0f;
					isFalling = false;
				}
			}
		}
	}
}

