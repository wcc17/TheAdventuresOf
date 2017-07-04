using System;
using Microsoft.Xna.Framework;
using System.Text.RegularExpressions;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		//TODO: hardcoded value, needs to be loaded from XML
		public static float timeToLive = 10.0f; 

        public static float groundLevel;
		public Vector2 originVector = new Vector2();

		public bool isDead;
        bool isFalling;
        float parabolaX;
        float transparency;
        float timeAlive;

		public Bile()
		{
            isFalling = false;
            isDead = false;
            parabolaX = 0f;
            transparency = 1.0f;
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

        /**
         * Handle the projectile object fading out on monsters death
         * or on expiration of projectile object
         */
        public void HandleFadeOut(GameTime gameTime) 
        {
			transparency -= (0.5f * ((float)gameTime.ElapsedGameTime.TotalSeconds));
			tintColor = Color.White * transparency;

            //wanted the bile object to hurt player for a short amount of time
            //after monster actually died
            if(transparency < 0.9 && transparency > 0.0) 
            {
                isActive = false;
            }
            else if(transparency <= 0.0) 
            {
                isDead = true;
            }
        }
	}
}

