using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace TheAdventuresOf
{
    public class BileMonster : Monster
    {
        public static float floatHeight;
        public static float bileObjectLimit;
        public static float throwDelayTimeLimit;
        public List<Bile> activeBileObjects;

        public static string bileEntityTag;
        public static float bileSpeed;
        public static float bileFadeSpeed;


        public TimeSpan timeThrowDelayed = TimeSpan.FromSeconds(0);
        bool delayThrow = true;
        bool isThrowing = false;

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

            //don't want him to begin shooting as soon as he spawns
            delayAction = true;

            activeBileObjects = new List<Bile>();
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

        public void HandleThrowDelay(GameTime gameTime)
        {
            timeThrowDelayed = timeThrowDelayed.Add(gameTime.ElapsedGameTime);
            if (timeThrowDelayed.TotalSeconds > throwDelayTimeLimit)
            {
                delayThrow = false;
                timeThrowDelayed = TimeSpan.FromSeconds(0);
            }
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false)
        {
            updateBileObjects(gameTime);

            if (!isDying && !delayThrow && !isSpawning && !isThrowing)
            {
                if (activeBileObjects.Count < bileObjectLimit)
                {
                    isThrowing = true;
                }
            }
            else if (!isDying && !delayThrow && !isSpawning && isThrowing)
            {
                handleThrow(gameTime);
            }
            else
            {
                //check if monster is ready to throw, so he can throw on the next frame
                HandleThrowDelay(gameTime);

                base.Update(gameTime, buttonPressed);
            }
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);

            foreach (Bile bile in activeBileObjects)
            {
                bile.Draw(spriteBatch, AssetManager.Instance.bileTexture);
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
                    Console.WriteLine("size of active objects: " + activeBileObjects.Count);
                }
            }
            activeBileObjects.RemoveAll(bile => bile.isDead == true);
            Console.WriteLine("size of active objects after removing: " + activeBileObjects.Count);
        }

        void handleThrow(GameTime gameTime)
        {
            spawnNewBileObject();
            delayThrow = true;
        }

        void spawnNewBileObject()
        {
            Bile bile = new Bile();

            bile.entityTag = bileEntityTag;
            bile.speed = bileSpeed;
            bile.fadeSpeed = bileFadeSpeed;
            bile.moveLeft = moveLeft;
            bile.moveRight = moveRight;
            bile.positionVector.X = positionVector.X;
            bile.positionVector.Y = positionVector.Y;
            bile.originVector.X = positionVector.X;
            bile.originVector.Y = positionVector.Y;
            bile.UpdateEntityBounds();
            bile.isActive = true; 

            activeBileObjects.Add(bile);
            isThrowing = false;
        }
    }
}

