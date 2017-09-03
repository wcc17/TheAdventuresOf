using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace TheAdventuresOf
{
    public class BileMonster : Monster
    {
        public static float bileGroundLevel;
        public static float floatHeight;
        public static float bileObjectLimit;
        public List<Bile> activeBileObjects;
        public static float buildupDelayTimeLimit;
        public static float buildUpTimeLimit;
        public static float throwTimeLimit;

        public static string bileEntityTag;
        public static float bileSpeed;
        public static float bileFadeSpeed;

        bool delayBuildup = true; //wait to start building up
        bool isThrowing = false; //is actually tossing bile object

        Animation buildUpAnimation;
        Animation throwAnimation;

        Timer buildupDelayTimer = new Timer(buildupDelayTimeLimit);
        Timer buildupTimer = new Timer(buildUpTimeLimit);
        Timer throwTimer = new Timer(throwTimeLimit);

        public void SetBileMonsterData(BileMonster bileMonster)
        {
            entityTag = bileMonster.entityTag;
            speed = bileMonster.speed;
            animationSpeed = bileMonster.animationSpeed;
            frameCount = bileMonster.frameCount;
            moveDistanceLimit = bileMonster.moveDistanceLimit;
            actionDelayTime = bileMonster.actionDelayTime;
            rotationSpeed = bileMonster.rotationSpeed;
            upDownSpeed = bileMonster.upDownSpeed;

            monsterTexture = AssetManager.Instance.bileMonsterTexture;
        }

        public override void InitializeSpawn()
        {
            Reset();

            //assuming that new X position is set in main Update function for now
            ChooseRandomDirection();

            isSpawning = true;
            delayAction = true;

            activeBileObjects = new List<Bile>();
        }

        public override void InitializeAnimation()
        {
            base.InitializeAnimation();

            buildUpAnimation = new Animation();
            buildUpAnimation.AddFrame(new Rectangle(entityWidth,
                                                    0,
                                                    entityWidth,
                                                    entityHeight), TimeSpan.FromSeconds(animationSpeed));

            throwAnimation = new Animation();
            throwAnimation.AddFrame(new Rectangle(entityWidth*2,
                                                  0,
                                                  entityWidth,
                                                  entityHeight), TimeSpan.FromSeconds(animationSpeed));
        }

        public override void HandleSpawn(GameTime gameTime)
        {
            if (positionVector.Y < groundLevel)
            {
                MoveUpDown(gameTime, DOWN);
            }
            else
            {
                InitializeMonster();
            }
        }

        public override void HandleDeath(GameTime gameTime)
        {
            base.HandleDeath(gameTime);
            handleBileObjectsOnDeath(gameTime);
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false)
        {
            updateBileObjects(gameTime);

            if (!isDying && !delayBuildup && !isSpawning && !isThrowing)
            {
                if (activeBileObjects.Count < bileObjectLimit)
                {
                    handleBuildUpAnimation(gameTime);
                }
            }
            else if (!isDying && !isDead && !delayBuildup && !isSpawning && isThrowing)
            {
                handleThrowAnimation(gameTime);
            }
            else
            {
                //if we don't check this, buildUpDelay will end and cause throw animation to occur even when dying or dead
                if (!isDying && !isDead) {
                    //check if monster is ready to throw, so he can throw on the next frame
                    handleBuildUpDelay(gameTime);
                }

                base.Update(gameTime, buttonPressed);
            }

            UpdateEntityBounds();
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);

            foreach (Bile bile in activeBileObjects)
            {
                bile.Draw(spriteBatch, AssetManager.Instance.bileTexture);
            }
        }

        public override void Reset() 
        {
            base.Reset();

            buildupDelayTimer.Reset();
            buildupTimer.Reset();
            throwTimer.Reset();
        }

        /**
         * Handles fading out the bile objects if the bile monster dies 
         */
        void handleBileObjectsOnDeath(GameTime gameTime)
        {
            if (isDead)
            {
                activeBileObjects.Clear();
            }
            else
            {
                foreach (Bile bile in activeBileObjects)
                {
                    bile.HandleFadeOut(gameTime);
                }
            }
        }

        void handleBuildUpDelay(GameTime gameTime)
        {
            currentAnimation = baseAnimation;

            bool timeUp = buildupDelayTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) 
            {
                delayBuildup = false;
                buildupDelayTimer.Reset();

                if(PlayerManager.Instance.GetPlayerPosition().X >= this.positionVector.X) {
                    moveRight = true;
                    moveLeft = false;
                } else {
                    moveRight = false;
                    moveLeft = true;
                }
            }
        }

        void handleBuildUpAnimation(GameTime gameTime)
        {
            currentAnimation = buildUpAnimation;

            HandleShake(gameTime);

            bool timeUp = buildupTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) 
            {
                isThrowing = true;
                spawnNewBileObject();
                buildupTimer.Reset();
            }
        }

        void handleThrowAnimation(GameTime gameTime)
        {
            currentAnimation = throwAnimation;
            handleThrowRotation(gameTime);

            bool timeUp = throwTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) {
                rotation = 0;

                isThrowing = false;
                delayBuildup = true;
                throwTimer.Reset();

                ForceAction();
            }
        }

        void handleThrowRotation(GameTime gameTime) 
        {
            float maxRotation = 0.5f;
            if (moveLeft)
            {
                maxRotation *= -1;
                if (rotation > maxRotation)
                {
                    Rotate(gameTime);
                }
            }
            else
            {
                if (rotation < maxRotation)
                {
                    Rotate(gameTime);
                }
            }    
        }

        /**
         * Call bile objects Update method and remove bile objects
         * from active bile objects if player hits the object or if
         * the bile object has been on the screen too long
         **/
        void updateBileObjects(GameTime gameTime)
        {
            //update all of the existing bile objects
            foreach (Bile bile in activeBileObjects)
            {
                if (!bile.isDead)
                {
                    bile.Update(gameTime);
                }
            }
            //TODO: ensure that old bile objects are actually being gotten rid of
            activeBileObjects.RemoveAll(bile => bile.isDead == true);
        }

        void spawnNewBileObject()
        {
            Bile bile = new Bile();

            bile.entityTag = bileEntityTag;
            bile.groundLevel = bileGroundLevel + Bile.groundOffset;
            bile.speed = bileSpeed;
            bile.fadeSpeed = bileFadeSpeed;
            bile.moveLeft = moveLeft;
            bile.moveRight = moveRight;
            bile.positionVector.X = positionVector.X;
            bile.positionVector.Y = positionVector.Y;
            bile.originVector.X = positionVector.X;
            bile.originVector.Y = positionVector.Y;
            bile.isActive = true; 

            activeBileObjects.Add(bile);
        }

    }
}

