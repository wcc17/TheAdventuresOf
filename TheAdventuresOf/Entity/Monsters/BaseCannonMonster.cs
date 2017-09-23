using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class BaseCannonMonster : Monster
    {
        public float leftSideX;
        public float rightSideX;
        public float boundOffset;

        public bool isShooting;

        public Bullet bullet;
        public static string bulletEntityTag;
        public static float bulletSpeed;
        public static int bulletDamage;
        public static float initialBulletRotationSpeed;
        public static float initialBulletFadeSpeed;
        public float bulletYOffset;

        public static float recoilSpeed;
        public static float recoilDistance;
        public bool isRecoil;

        public void initializeBullet()
        {
            if (bullet == null)
            {
                bullet = new Bullet();
                bullet.InitializeEntity(0, 0); //x pos will be set by cannon monster
            }

            bullet.Reset(bulletEntityTag, bulletSpeed, bulletDamage, positionVector.X, 
                         groundLevel + bulletYOffset, initialBulletRotationSpeed, 
                         initialBulletFadeSpeed,  moveLeft, moveRight, entityWidth);
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false)
        {
            if (!isDying && !delayAction && !isSpawning && isShooting)
            {
                HandleShoot(gameTime);
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
            else if (isDying)
            {
                isSpawning = false;

                //should still finish the shot and hurt player if applicable, even if dying
                //TODO: look here if memory or performance becomes problem. shouldn't be because after isDead = true,
                //bullet will no longer getr updated. just wondering if the bullet existing will cause GC
                //to keep this somewhere in memory too long
                if (isShooting)
                {
                    HandleShoot(gameTime);
                }

                HandleDeath(gameTime);
            }
            else if (isSpawning)
            {
                HandleSpawn(gameTime);
            }

            UpdateEntityBounds();
        }

        public void HandleShoot(GameTime gameTime)
        {
            bullet.Update(gameTime);

            HandleRecoil(gameTime);

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

        //kind of long winded, but this was the better way to do it while still 
        //being clear about what was happening
        public virtual void HandleRecoil(GameTime gameTime)
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
            }
        }

        public override void HandleDelay(GameTime gameTime)
        {
            base.HandleDelay(gameTime);

            if (!delayAction)
            {
                Logger.WriteToConsole("activating bullet");
                bullet.isActive = true;
            }
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);

            if (isShooting)
            {
                bullet.Draw(spriteBatch, AssetManager.Instance.bulletTexture);
            }
        }

        public void ChooseSide(BaseCannonMonster existingCannonMonster)
        {
            //there can only be two of these monsters on the level at any time
            //if a groundCannonMonster already exists, get its side and put the new one on the other side
            if (existingCannonMonster != null)
            {
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
        }

        //no reason to check collision with level bounds here
        public override void HandleLevelBoundCollision(int direction, int boundX) { }
    }
}
