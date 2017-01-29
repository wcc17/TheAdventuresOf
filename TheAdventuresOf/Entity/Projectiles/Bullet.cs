using Microsoft.Xna.Framework;
using System;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Bullet : Projectile
	{
		public Bullet()
		{
			//x pos will be set by cannon monster
			//TODO: need a solution for loading this somewhere else
			InitializeEntity(0, 725);

			entityBounds.Width = AssetManager.bulletTexture.Width;
			entityBounds.Height = AssetManager.bulletTexture.Height;
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			base.Update(gameTime, buttonPressed);

			Move(gameTime);

			checkScreenPos();
		}

		public override void Move(GameTime gameTime, int direction = 0)
		{
			if (moveLeft)
			{
				positionVector.X -= (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			}

			if (moveRight)
			{
				positionVector.X += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			}

			UpdateEntityBounds();
		}

		void checkScreenPos()
		{
			if (moveLeft)
			{
				if (positionVector.X < -10)
				{
					Console.WriteLine("bullet is off screen");
					isActive = false;
				}
			}

			if (moveRight)
			{
				if (positionVector.X > Screen.FULL_SCREEN_WIDTH + 10)
				{
					Console.WriteLine("bullet is off screen");
					isActive = false;
				}
			}
		}
	}
}

