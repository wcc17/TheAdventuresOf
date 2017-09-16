using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class DashMonster : Monster
    {
        //these are end points for the dash monster to run to on either side of level
        public static float leftSideX;
        public static float rightSideX;

        public static float groundOffset;
        public static float boundOffset;
        Animation movingAnimation;

        public void SetDashMonsterData(DashMonster dashMonster)
        {
            entityTag = dashMonster.entityTag;
            speed = dashMonster.speed;
            spawnSpeed = dashMonster.spawnSpeed;
            deathSpeed = dashMonster.deathSpeed;
            frameCount = dashMonster.frameCount;
            actionDelayTime = dashMonster.actionDelayTime;
            rotationSpeed = dashMonster.rotationSpeed;
            animationSpeed = dashMonster.animationSpeed;
            damage = dashMonster.damage;

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
                MoveUpDown(gameTime, UP, spawnSpeed);
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
            else if(isDying)
            {
                isSpawning = false;
                HandleDeath(gameTime);    
            }
            else if(isSpawning)
            {
                HandleSpawn(gameTime);
            }

            UpdateEntityBounds();

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
                    currentAnimation = baseAnimation;
                }
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
                    currentAnimation = baseAnimation;
                }
            }
        }

        public override void HandleAnimation(GameTime gameTime)
        {
            currentAnimation.Update(gameTime);
        }
    }
}
