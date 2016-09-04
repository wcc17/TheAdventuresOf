using Microsoft.Xna.Framework;
using System;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Bullet : Entity
	{
		public bool isActive = false;

		public Color tintColor = Color.White;

		public Bullet()
		{
			//need a solution for loading these somewhere else
			speed = 500;

			//x pos will be set by cannon monster
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

		//not overriding Entity.Move because we don't need int direction param
		public void Move(GameTime gameTime)
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

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (moveLeft)
			{
				spriteBatch.Draw(texture, positionVector, color: tintColor, effects: SpriteEffects.FlipHorizontally);
			}
			else if (moveRight)
			{
				spriteBatch.Draw(texture, positionVector, color: tintColor);
			}

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

