using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
        public static float groundLevel;
        public static float timeToLive;
		public Vector2 originVector = new Vector2();

        bool isFalling;
        float parabolaX;
        float timeAlive;

		public Bile()
		{
            isFalling = false;
            isDead = false;
            timeAlive = 0.0f;

			entityBounds.Width = AssetManager.Instance.bileTexture.Width;
			entityBounds.Height = AssetManager.Instance.bileTexture.Height;

			isFalling = true;
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			base.Update(gameTime, buttonPressed);

            timeAlive += (float)gameTime.ElapsedGameTime.TotalSeconds;
            if (timeAlive >= timeToLive) 
            {
                HandleFadeOut(gameTime);
            } 
            else if(isFalling) 
            {
				Move(gameTime);
            }

		}

		public override void Move(GameTime gameTime, int direction = 0)
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

			if (positionVector.Y >= groundLevel)
			{
				positionVector.Y = groundLevel;
				parabolaX = 0f;
				isFalling = false;
			}
		}

		public override void HandlePostPlayerCollision()
		{
            base.HandlePostPlayerCollision();

            //setting the timeAlive to be more than timeToLive will begin the
            //fade out process in the next frame, so we can get this thing off screen
            timeAlive = timeToLive;
		}
	}
}

