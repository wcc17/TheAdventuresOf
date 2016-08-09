using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Monster : Character
	{

		public override void InitializeAnimation()
		{
			Console.Write("This initialize method was called");

			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(0, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
		}

		public override void Update(GameTime gameTime, bool buttonPressed)
		{
			base.Update(gameTime, buttonPressed);
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			base.HandleAnimation(gameTime);
		}

		public override void HandleMovement(GameTime gameTime)
		{
			base.HandleMovement(gameTime);
		}

		public override void Move(GameTime gameTime, int direction)
		{
			base.Move(gameTime, direction);
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);
		}
	}
}

