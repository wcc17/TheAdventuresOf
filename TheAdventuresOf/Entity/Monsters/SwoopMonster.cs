using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class SwoopMonster : Monster
    {
        //cosX 0 to -6.5 is one full "arc" that we're looking for (the swoop)
        const double COS_X_LIMIT = -6.5;

        public static float floatHeight;
        public static float swoopDelayLimit;
        public static float swoopArcScale;
        public static float swoopArcWidth;
        public static float swoopArcSpeed;

        bool delaySwoop;
        Timer swoopDelayTimer;
        double cosX;
        int directionMultiplier = 1;

        public void SetSwoopMonsterData(SwoopMonster swoopMonster)
        {
            entityTag = swoopMonster.entityTag;
            speed = swoopMonster.speed;
            spawnSpeed = swoopMonster.spawnSpeed;
            deathSpeed = swoopMonster.deathSpeed;
            animationSpeed = swoopMonster.animationSpeed;
            frameCount = swoopMonster.frameCount;
            moveDistanceLimit = swoopMonster.moveDistanceLimit;
            actionDelayTime = swoopMonster.actionDelayTime;
            rotationSpeed = swoopMonster.rotationSpeed;
            damage = swoopMonster.damage;
            invincibilityTimeLimit = swoopMonster.invincibilityTimeLimit;
            fadeSpeed = swoopMonster.fadeSpeed;

            monsterTexture = AssetManager.Instance.swoopMonsterTexture;
            swoopDelayTimer = new Timer(swoopDelayLimit);
        }

        public override void InitializeSpawn() {
            base.InitializeSpawn();

            if (spawnType == SPAWN_TOP)
            {
                ChooseRandomDirection();
            }

            isSpawning = true;
            delayAction = true;
            delaySwoop = true;
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) {
            /**
             * if not spawning or dying, should be moving toward player or not moving at all
             * should be more likely to move toward player
             * every now and then, stop movement decisions and "swoop"
             * if "swooping", movement should not happen again until its over
             * should also not be updating timer for movement
             * NOTE: trying out seperate if statements for now. it will work better for this specific monster
             */

            //delayAction is for movement
            if(!isDying && (!delayAction || !delaySwoop) && !isSpawning) {
                HandleMovement(gameTime);
            } 

            if ((delayAction || delaySwoop) && !isDying && !isSpawning) {
                //only increase delayAction timer if monster is currently not "swooping"
                if(delayAction && delaySwoop) {
                    HandleDelay(gameTime);
                }

                if(delaySwoop) {
                    handleSwoopDelay(gameTime);
                }
            }

            if(!isDying && !isSpawning) {
                HandleInvincibility(gameTime);
            }

            if(isDying) {
                isSpawning = false;
                HandleDeath(gameTime);
            } else if (isSpawning) {
                HandleSpawn(gameTime);    
            }

            UpdateEntityBounds();
            
        }

        public override void HandleMovement(GameTime gameTime) {
            if(!delaySwoop) {
                handleSwoop(gameTime);
            } else {
                handleMove(gameTime);
            }
        }

        public override void MoveTowardPlayer() {
            base.MoveTowardPlayer();
            directionMultiplier = (moveLeft) ? -1 : 1;
        }

        public float playerTrailDistance = 100;
        public float trailXOffset = 10;
        void trailPlayer()
        {
            float playerX = PlayerManager.Instance.GetPlayerPosition().X;
            float playerWidth = PlayerManager.Instance.GetPlayerWidth();

            float trailX = 0;
            if (PlayerManager.Instance.IsMoveLeft()) {
                trailX = playerX + playerWidth + playerTrailDistance;
            } else if(PlayerManager.Instance.IsMoveRight()) {
                trailX = playerX - playerTrailDistance - entityWidth;
            }
            changeDirectionDuringPlayerTrail(trailX);

        }

        void changeDirectionDuringPlayerTrail(float trailX) {
            if (positionVector.X > (trailX + trailXOffset) || positionVector.X < (trailX - trailXOffset))
            {
                if (positionVector.X > (trailX + trailXOffset))
                {
                    moveLeft = true;
                    moveRight = false;
                }
                else if (positionVector.X < (trailX - trailXOffset))
                {
                    moveLeft = false;
                    moveRight = true;
                }
            }
            else
            {
                ChooseRandomDirection();
            }
        }

        void handleMove(GameTime gameTime) {
            if(distanceMoved > moveDistanceLimit) {
                distanceMoved = 0;
                delayAction = true;
                isMoving = false;
            }

            MoveTowardPlayer();
            if(!isMoving) {
                isMoving = true;
            }

            base.HandleMovement(gameTime);
        }

        void handleSwoop(GameTime gameTime) {
            double cosY = Math.Cos(cosX);
            cosX -= (swoopArcSpeed * gameTime.ElapsedGameTime.TotalSeconds);

            positionVector.X += (swoopArcWidth * (float)gameTime.ElapsedGameTime.TotalSeconds) * directionMultiplier;
            positionVector.Y = groundLevel + (float)((-cosY * swoopArcScale) + swoopArcScale);

            if ((int)Math.Floor(cosX) <= COS_X_LIMIT) {
                cosX = 0;
                delaySwoop = true;
                positionVector.Y = groundLevel;
            }
        }

        void handleSwoopDelay(GameTime gameTime)
        {
            bool timeUp = swoopDelayTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if (timeUp)
            {
                swoopDelayTimer.Reset();
                delaySwoop = false;
                MoveTowardPlayer();
            }
        }
    }
}
