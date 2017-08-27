using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
        public static float timeToLive;
        public static float distance;
        public static float groundOffset;
        public Vector2 originVector = new Vector2();
        public float groundLevel;

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

            UpdateEntityBounds();

		}

		public override void Move(GameTime gameTime, int direction = 0)
		{
			int directionMultiplier = 1;
            if (moveLeft)
			{
				directionMultiplier = -1;
			}

			float time = (float)gameTime.ElapsedGameTime.TotalSeconds;

			//y = ax^2 + b
			parabolaX += ((time * speed) * directionMultiplier);
			positionVector.X = parabolaX + originVector.X;
			positionVector.Y = (float)(Math.Pow(-(distance*parabolaX), 2)) + originVector.Y;

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

