using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class FlyingCannonMonster : BaseCannonMonster
    {
        public static float floatHeight;
        public static float bounceHeight = 12;
        public int bounceUpDown = 1; //positive to go up, negative to go down

        public void SetFlyingCannonMonsterData(FlyingCannonMonster flyingCannonMonster) {
            entityTag = flyingCannonMonster.entityTag;
            frameCount = flyingCannonMonster.frameCount;
            rotationSpeed = flyingCannonMonster.rotationSpeed;
            upDownSpeed = flyingCannonMonster.upDownSpeed;
            actionDelayTime = flyingCannonMonster.actionDelayTime;
            bulletStartYPos = flyingCannonMonster.bulletStartYPos;
            animationSpeed = flyingCannonMonster.animationSpeed;
            leftSideX = flyingCannonMonster.leftSideX;
            rightSideX = flyingCannonMonster.rightSideX;
            monsterTexture = AssetManager.Instance.flyingCannonMonsterTexture;

            speed = 125;
        }

        public override void InitializeSpawn()
        {
            Reset();

            isSpawning = true;

            initializeBullet();
        }

        public override void InitializeAnimation() 
        {
            standAnimation = new Animation();
            standAnimation.AddFrame(new Rectangle(0,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
            standAnimation.AddFrame(new Rectangle(entityWidth,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));

            currentAnimation = standAnimation;
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) {
            HandleAnimation(gameTime);
            base.Update(gameTime, false);
        }

        public override void HandleSpawn(GameTime gameTime) {
            
            if (positionVector.Y < groundLevel) {
                MoveUpDown(gameTime, DOWN);
            } else {
                //just to ensure the monster is where its supposed to be
                positionVector.Y = groundLevel;

                InitializeMonster();

                //since spawning is complete, monster is rdy. want him to shoot immediately
                //if not, add delayAction = true to InitializeSpawn to stop this
                bullet.isActive = true;
            }
        }

        public override void HandleAnimation(GameTime gameTime) {
            currentAnimation.Update(gameTime);

            if(!isSpawning) {
                handleBounce(gameTime);
            }
        }

        public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters)
        {
            FlyingCannonMonster existingCannonMonster = null;

            if (cannonMonsterCount > 0)
            {
                existingCannonMonster = (FlyingCannonMonster)monsters.Find(cm => (cm is FlyingCannonMonster));
            }

            ChooseSide(existingCannonMonster);
        }

        void handleBounce(GameTime gameTime)
        {
            if (positionVector.Y >= (groundLevel + bounceHeight))
            {
                bounceUpDown = -1;
            }

            if (positionVector.Y <= groundLevel)
            {
                bounceUpDown = 1;
            }

            positionVector.Y += (float)(speed/3 * gameTime.ElapsedGameTime.TotalSeconds * bounceUpDown);
        }
    }
}
