using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class DashMonster : Monster
    {
        //these are end points for the dash monster to run to on either side of level
        public static float leftSideX;
        public static float rightSideX;

        //public static float bounceHeight = 1;
        //public int bounceUpDown = 1; //positive to go up, negative to go down

        public static float groundOffset;
        public static float boundOffset;
        Animation movingAnimation;

        public void SetDashMonsterData(DashMonster dashMonster)
        {
            entityTag = dashMonster.entityTag;
            speed = dashMonster.speed;
            frameCount = dashMonster.frameCount;
            actionDelayTime = dashMonster.actionDelayTime;
            rotationSpeed = dashMonster.rotationSpeed;
            upDownSpeed = dashMonster.upDownSpeed;
            animationSpeed = dashMonster.animationSpeed;

            monsterTexture = AssetManager.Instance.dashMonsterTexture;
        }

        public override void InitializeAnimation()
        {
            //first frame is the stand animation, but its the second frame in the run animation
            base.InitializeAnimation();

            movingAnimation = new Animation();
            movingAnimation.AddFrame(new Rectangle(entityWidth,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
            movingAnimation.AddFrame(new Rectangle(0,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
            movingAnimation.AddFrame(new Rectangle(entityWidth * 2,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
        }

        public override void InitializeSpawn()
        {
            Reset();

            //assuming that new X position is set in main Update function for now
            ChooseRandomDirection();
            if (moveLeft)
            {
                rotation = RIGHT_ANGLE_RADIANS;
            }
            else
            {
                rotation = -RIGHT_ANGLE_RADIANS;
            }

            isSpawning = true;
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
                ForceAction();
                currentAnimation = movingAnimation;
            }
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) 
        {
            if (!isDying && !delayAction && !isSpawning) 
            {
                HandleMovement(gameTime);
                HandleAnimation(gameTime);
            }
            else if(delayAction && !isDying && !isSpawning)
            {
                HandleDelay(gameTime);
            }
            else if(isDying && !isSpawning)
            {
                HandleDeath(gameTime);    
            }
            else if(isSpawning)
            {
                HandleSpawn(gameTime);
            }

        }

        public override void HandleDelay(GameTime gameTime) 
        {
            base.HandleDelay(gameTime);

            if(!delayAction) 
            {
                currentAnimation = movingAnimation;    
            }
        }

        public override void HandleMovement(GameTime gameTime)
        {
            if (moveLeft) 
            {
                positionVector.X -= (float)(speed * gameTime.ElapsedGameTime.TotalSeconds);

                //handleBounce(gameTime);

                if(positionVector.X <= leftSideX)
                {
                    positionVector.Y = groundLevel;

                    delayAction = true;
                    moveLeft = false;
                    moveRight = true;
                    currentAnimation = standAnimation;
                }

                UpdateEntityBounds();
            }
            else 
            {
                positionVector.X += (float)(speed * gameTime.ElapsedGameTime.TotalSeconds);

                //handleBounce(gameTime);

                if(positionVector.X >= rightSideX) 
                {
                    positionVector.Y = groundLevel;

                    delayAction = true;
                    moveLeft = true;
                    moveRight = false;
                    currentAnimation = standAnimation;
                }

                UpdateEntityBounds();
            }
        }

        public override void HandleAnimation(GameTime gameTime)
        {
            currentAnimation.Update(gameTime);
        }

        //void handleBounce(GameTime gameTime)
        //{
        //    if (positionVector.Y >= (groundLevel + bounceHeight))
        //    {
        //        bounceUpDown = -1;
        //    }

        //    if (positionVector.Y <= groundLevel)
        //    {
        //        bounceUpDown = 1;
        //    }

        //    positionVector.Y += (float)(speed/3 * gameTime.ElapsedGameTime.TotalSeconds * bounceUpDown);
        //}
    }
}
