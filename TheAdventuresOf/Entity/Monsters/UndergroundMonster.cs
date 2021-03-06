﻿using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class UndergroundMonster : Monster {

        public static float initialVelocity;
        public static float gravity;
        public static float velocityWeakenValue;
        public static float rotationVelocityLimit;

        float velocity;

        public void SetUndergroundMonsterData(UndergroundMonster undergroundMonster) {
            entityTag = undergroundMonster.entityTag;
            speed = undergroundMonster.speed;
            spawnSpeed = undergroundMonster.spawnSpeed;
            deathSpeed = undergroundMonster.deathSpeed;
            animationSpeed = undergroundMonster.animationSpeed;
            frameCount = undergroundMonster.frameCount;
            moveDistanceLimit = undergroundMonster.moveDistanceLimit;
            actionDelayTime = undergroundMonster.actionDelayTime;
            rotationSpeed = undergroundMonster.rotationSpeed;
            damage = undergroundMonster.damage;
            fadeSpeed = undergroundMonster.fadeSpeed;

            monsterTexture = AssetManager.Instance.undergroundMonsterTexture;
        }

        public override void InitializeSpawn() {
            moveRight = true; //monster won't be drawn without this, doesnt affect current monster
            isSpawning = false; //just to be safe in case changes are made
            delayAction = false;
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) {
            //can't use base.Update, because this monster doesn't "spawn", he just starts acting

            if(!isDying && !delayAction) {
                if(!isMoving) {
                    prepareAttack();
                } else {
                    HandleMovement(gameTime);
                }
            } else if(!isDying && delayAction) {
                HandleDelay(gameTime);
            } else if (isDying) {
                HandleDeath(gameTime);
            }

            UpdateEntityBounds();
        }

        public override void HandleMovement(GameTime gameTime) {
            Move(gameTime);

            //velocity will only be greater than 0 when we've hit the top of th attack and are coming back down
            if ( (positionVector.Y > (ScreenManager.VIRTUAL_SCREEN_HEIGHT + entityHeight)) && velocity > 0) {
                positionVector.Y = ScreenManager.VIRTUAL_SCREEN_HEIGHT + entityHeight;
                isMoving = false;
                delayAction = true;
            }
        }

        public override void HandleDeath(GameTime gameTime) {
            //rotate while fading
            if(rotation > 0) {
                Rotate(gameTime);
            } else {
                rotation = 0;
            }

            HandleFadeOut(gameTime);

            if (alpha < 0) {
                isDead = true;
            }
        }

        public override void Move(GameTime gameTime, int direction = 0)
        {
            if(positionVector.Y > groundLevel) {
                positionVector.Y += (velocity * velocityWeakenValue);
            } else {
                velocity += gravity;
                positionVector.Y += velocity;
            }

            //rotationVelocityLimit is right before we're about to start falling again
            if(velocity > rotationVelocityLimit && rotation > 0) {
                Rotate(gameTime);
            } else if(rotation <= 0) {
                rotation = 0;
            }
        }

        public override void Rotate(GameTime gameTime) {
            float degreesToRotate = rotationSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
            float radiansToRotate = (degreesToRotate * MathHelper.Pi) / 180;

            rotation -= radiansToRotate;
        }

        void prepareAttack() {
            float playerX = PlayerManager.Instance.GetPlayerPosition().X;
            positionVector.X = playerX;

            velocity = initialVelocity;
            rotation = 180 * (float)(Math.PI / 180);
            isMoving = true;
        }

    }
}
