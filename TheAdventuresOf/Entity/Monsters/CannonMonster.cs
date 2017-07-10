using System;
using Microsoft.Xna.Framework;
using System.Collections.Generic;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class CannonMonster : Monster
	{
		public static float leftSideX;
		public static float rightSideX;
		public static float groundOffset;
		public static float boundOffset;
        public static float recoilSpeed;
        public static float recoilDistance;

		bool isShooting;
        bool isRecoil;

		public Bullet bullet;
        public static string bulletEntityTag;
        public static float bulletSpeed;
        public static float bulletStartYPos;
        public static float bulletRotationSpeed;
        public static float bulletFadeSpeed;

		public void SetCannonMonsterData(CannonMonster cannonMonster)
		{
			entityTag = cannonMonster.entityTag;
			frameCount = cannonMonster.frameCount;
			rotationSpeed = cannonMonster.rotationSpeed;
			upDownSpeed = cannonMonster.upDownSpeed;
			actionDelayTime = cannonMonster.actionDelayTime;
			monsterTexture = AssetManager.Instance.cannonMonsterTexture;
		}

		public override void InitializeSpawn()
		{
			Reset();

			if (moveLeft)
			{
				rotation = RIGHT_ANGLE_RADIANS;
			}
			else 
			{
				rotation = -RIGHT_ANGLE_RADIANS;
			}

			isSpawning = true;

			initializeBullet();
		}

		public override void HandleSpawn(GameTime gameTime)
		{
			if (positionVector.Y > groundLevel)
			{
				MoveUpDown(gameTime, UP);
			}
			else if ((moveLeft && rotation > 0) || (moveRight && rotation < 0))
			{
				Rotate(gameTime);
			}
			else
			{
				InitializeMonster();

				//since spawning is complete, monster is ready to go. want him to shoot as soon as he spawns
				//if we dont want that anymore, add delayAction = true to InitSpawn and get rid of this
				bullet.isActive = true;
			}
		}

		void handleShoot(GameTime gameTime)
		{
			bullet.Update(gameTime);

            handleRecoil(gameTime);

			if (bullet.isDead)
			{
				isShooting = false;
				delayAction = true;

                //reset position after recoil
                if (moveLeft) 
                {
                    positionVector.X = rightSideX;
                }
                else 
                {
                    positionVector.X = leftSideX;
                }
				
				//reset bullet
				initializeBullet();
			}
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!isDying && !delayAction && !isSpawning && isShooting)
			{
				handleShoot(gameTime);
			}
			else if (!isDying && !delayAction && !isSpawning)
			{
				if (!isShooting)
				{
					isShooting = true;
                    isRecoil = true;
				}
			}
			else if (delayAction && !isDying && !isSpawning)
			{
				HandleDelay(gameTime);
			}
			else if (isDying && !isSpawning)
			{
				//should still finish the shot and hurt player if applicable, even if dying
				//TODO: look here if memory or performance becomes problem. shouldn't be because after isDead = true,
				//bullet will no longer getr updated. just wondering if the bullet existing will cause GC
				//to keep this somewhere in memory too long
				if (isShooting)
				{
					handleShoot(gameTime);
				}

				HandleDeath(gameTime);
			}
			else if (isSpawning)
			{
				HandleSpawn(gameTime);
			}
		}

		public override void HandleDelay(GameTime gameTime)
		{
			base.HandleDelay(gameTime);

			if (!delayAction)
			{
				Console.WriteLine("activating bullet");
				bullet.isActive = true;
			}
		}

		public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters)
		{
			//there can only be two of these monsters on the level at any time
			//if a cannonMonster already exists, get its side and put the new one on the other side
			if (cannonMonsterCount > 0)
			{
				CannonMonster existingCannonMonster = (CannonMonster)monsters.Find(cm => (cm is CannonMonster));

				if (existingCannonMonster.moveLeft)
				{
					//moveLeft = facingLeft, meaning cannon is on the right side, so put the new one on the left side
					positionVector.X = leftSideX;
					moveRight = true;
				}
				else if (existingCannonMonster.moveRight)
				{
					//moveRight = facingRight, meaning cannon is on the left side, so put the new one on the right side
					positionVector.X = rightSideX;
					moveLeft = true;
				}
			}
			else 
			{
				if (rand.Next(0, 2) == 0)
				{
					positionVector.X = leftSideX;

					//if on the left side of the level, should be facing right
					moveRight = true;
				}
				else
				{
					positionVector.X = rightSideX;

					//if on the right side of the level, should be facing left
					moveLeft = true;
				}
			}

			UpdateEntityBounds();
		}

		public override void Draw(SpriteBatch spriteBatch)
		{
			base.Draw(spriteBatch);

			if (isShooting)
			{
				bullet.Draw(spriteBatch, AssetManager.Instance.bulletTexture);
			}
		}

		void initializeBullet()
		{
			if (bullet == null)
			{
				bullet = new Bullet();
				bullet.InitializeEntity(0, 0); //x pos will be set by cannon monster
			}

            bullet.Reset(bulletEntityTag, bulletSpeed, positionVector.X, 
                         bulletRotationSpeed, bulletFadeSpeed, moveLeft, 
                         moveRight, entityWidth);
		}

        //TODO: get rid of this after at least one commit. Not sure If I want to keep the clever-ish way or the long way of doing this
        void handleRecoil(GameTime gameTime)
        {
            if (isRecoil)
            {
                if (moveLeft) 
                {
                    if (positionVector.X < (rightSideX + recoilDistance))
                    {
                        positionVector.X += (float)(recoilSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                    }
                    else
                    {
                        isRecoil = false;
                    }
                }
                else 
                {
                    if (positionVector.X > (leftSideX - recoilDistance))
                    {
                        positionVector.X -= (float)(recoilSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                    }
                    else
                    {
                        isRecoil = false;
                    }
                }

                UpdateEntityBounds();
            }
            else
            {
                if (moveLeft) 
                {
                    if (positionVector.X > rightSideX)
                    {
                        positionVector.X -= (float)(recoilSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                    }
                }
                else 
                {
                    if (positionVector.X < leftSideX)
                    {
                        positionVector.X += (float)(recoilSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                    }
                }

                UpdateEntityBounds();
            }
        }

		//no reason to check collision with level bounds here
		public override void HandleLevelBoundCollision(int direction, int boundX) { }
	}
}

