using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		public float groundLevel;
		bool isFalling;

		public Bile()
		{
			//TODO: need a solution for loading this somewhere else
			speed = 300;

			entityBounds.Width = AssetManager.bileTexture.Width;
			entityBounds.Height = AssetManager.bileTexture.Height;

			isFalling = true;
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			base.Update(gameTime, buttonPressed);

			Move(gameTime);
		}

		public override void Move(GameTime gameTime, int direction = 0)
		{
			//TODO: need to replace hardcoded values!!!!!!
			if (isFalling)
			{
				if (moveLeft)
				{
					positionVector.X -= (75 * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				if (moveRight)
				{
					positionVector.X += (75 * (float)gameTime.ElapsedGameTime.TotalSeconds);
				}

				positionVector.Y += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
				UpdateEntityBounds();
				Console.WriteLine(positionVector.Y);

				//level ground level does not work here, because the ground level assumes that something
				//will be drawn from the top left corner down. so we have to use our own value here
				//TODO: get rid of hardcoded value
				if (positionVector.Y >= 770)
				{
					positionVector.Y = 770;
					isFalling = false;
				}
			}
		}
	}
}

