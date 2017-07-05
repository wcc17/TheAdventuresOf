using Microsoft.Xna.Framework;
using System;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Bullet : Projectile
    {
        public static float startYPos;
        bool hasCollidedWithPlayer;

        public Bullet()
        {
            entityBounds.Width = AssetManager.Instance.bulletTexture.Width;
            entityBounds.Height = AssetManager.Instance.bulletTexture.Height;

            //TODO: Move this to XML loading code
            rotationSpeed = 1000;
            fadeSpeed = 1.3f;
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false)
        {
            base.Update(gameTime, buttonPressed);

            if (hasCollidedWithPlayer)
            {
                handleDestruction(gameTime);
            }
            else
            {
                Move(gameTime);
            }

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

        public override void HandlePostPlayerCollision()
        {
            base.HandlePostPlayerCollision();
            hasCollidedWithPlayer = true;
        }

		void handleDestruction(GameTime gameTime)
		{
            Rotate(gameTime);

			//speed divided by 2 so we can actually see the bullet fade
			positionVector.Y += ((speed / 2) * (float)gameTime.ElapsedGameTime.TotalSeconds);

			HandleFadeOut(gameTime);
			UpdateEntityBounds();
		}

        public void Reset(float speed, string entityTag, bool moveLeft,
                          bool moveRight, float x, float y, float monsterWidth) 
        {
            isDead = false;
            hasCollidedWithPlayer = false;

            this.transparency = 1.0f;
            tintColor = Color.White * transparency;

			this.speed = speed;
            this.entityTag = entityTag;
            this.rotation = 0;
            this.moveLeft = moveLeft;
            this.moveRight = moveRight;

			positionVector.Y = y;
            if (this.moveLeft) 
            {
                positionVector.X = x;
            }
            else 
            {
                positionVector.X = x + monsterWidth;
            }

			UpdateEntityBounds();
        }

        void checkScreenPos()
        {
            if (moveLeft)
            {
                if (positionVector.X < -10)
                {
                    //Console.WriteLine("bullet is off screen");
                    isActive = false;
                    isDead = true;
                }
            }

            if (moveRight)
            {
                if (positionVector.X > Screen.FULL_SCREEN_WIDTH + 10)
                {
                    //Console.WriteLine("bullet is off screen");
                    isActive = false;
                    isDead = true;
                }
            }
        }
    }
}

