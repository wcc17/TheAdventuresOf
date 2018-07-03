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

        public bool isLeftSide = false;
        public bool isRightSide = false;

        public static float shootCountLimit;
        int shootCount = 0;
        bool didHitShootCountLimit = false;

        public void InitializeBullet()
        {
            if (bullet == null)
            {
                bullet = new Bullet();

                //x pos will be set by cannon monster
                bullet.InitializeEntity(0, 0, 
                                        AssetManager.Instance.bulletTexture.Width, 
                                        AssetManager.Instance.bulletTexture.Height);
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
                    SoundManager.Instance.PlaySoundEffect(SoundManager.CANNON_MONSTER);
                    isShooting = true;
                    isRecoil = true;
                    shootCount++;

                    if(shootCount >= shootCountLimit) {
                        didHitShootCountLimit = true;
                        isDying = true;
                    }
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

                if(didHitShootCountLimit) {
                    HandleDespawn(gameTime);
                } else {
                    HandleDeath(gameTime);
                }
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
                InitializeBullet();
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

        public void ChooseRandomSide(int cannonMonsterCount, int childCannonMonsterCount, List<Monster> monsters) {
            BaseCannonMonster existingCannonMonster = null;

            //to have only one of any type of cannonMonster on one side at a time, uncomment, and comment out other part
            //if(cannonMonsterCount > 0) {
            //  existingCannonMonster = (BaseCannonMonster)monsters.Find(cm => (cm is BaseCannonMonster));
            //}
            if(childCannonMonsterCount > 0) {
                existingCannonMonster = FindExistingCannonMonster(monsters);
            }

            ChooseSide(existingCannonMonster);
        }

        public void HandleDespawn(GameTime gameTime) {
            if (positionVector.Y < ScreenManager.VIRTUAL_SCREEN_HEIGHT + this.entityHeight)
            {
                MoveUpDown(gameTime, DOWN, deathSpeed);
            } else {
                if(!bullet.isActive) {
					isDead = true;
                }
            }

            HandleFadeOut(gameTime);
        }

        //no reason to check collision with level bounds here
        public override void HandleLevelBoundCollision(int direction, int boundX) { }
        public virtual BaseCannonMonster FindExistingCannonMonster(List<Monster> monsters) { return null; }
    }
}
