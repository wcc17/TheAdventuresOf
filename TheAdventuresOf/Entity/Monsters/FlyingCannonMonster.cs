﻿﻿using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class FlyingCannonMonster : BaseCannonMonster
    {
        public static float floatHeight;

        public void SetFlyingCannonMonsterData(FlyingCannonMonster flyingCannonMonster) {
            entityTag = flyingCannonMonster.entityTag;
            frameCount = flyingCannonMonster.frameCount;
            rotationSpeed = flyingCannonMonster.rotationSpeed;
            spawnSpeed = flyingCannonMonster.spawnSpeed;
            deathSpeed = flyingCannonMonster.deathSpeed;
            actionDelayTime = flyingCannonMonster.actionDelayTime;
            bulletYOffset = flyingCannonMonster.bulletYOffset;
            animationSpeed = flyingCannonMonster.animationSpeed;
            leftSideX = flyingCannonMonster.leftSideX;
            rightSideX = flyingCannonMonster.rightSideX;
            bounceHeight = flyingCannonMonster.bounceHeight;
            bounceSpeed = flyingCannonMonster.bounceSpeed;
            damage = flyingCannonMonster.damage;
            fadeSpeed = flyingCannonMonster.fadeSpeed;

            monsterTexture = AssetManager.Instance.flyingCannonMonsterTexture;
        }

        public override void InitializeMonster() {
            base.InitializeMonster();

            //just to ensure the monster is where its supposed to be
            positionVector.Y = groundLevel;

            //since spawning is complete, monster is rdy. want him to shoot immediately
            //if not, add delayAction = true to InitializeSpawn to stop this
            bullet.isActive = true;
        }

        public override void InitializeSpawn()
        {
            base.InitializeSpawn();

            isSpawning = true;

            InitializeBullet();
        }

        public override void InitializeAnimation() 
        {
            baseAnimation = new Animation();
            baseAnimation.AddFrame(new Rectangle(0,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
            baseAnimation.AddFrame(new Rectangle(entityWidth,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));

            currentAnimation = baseAnimation;
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) {
            HandleAnimation(gameTime);
            base.Update(gameTime, false);
        }

        public override void HandleAnimation(GameTime gameTime) {
            currentAnimation.Update(gameTime);
            HandleBounce(gameTime);
        }

        public override BaseCannonMonster FindExistingCannonMonster(List<Monster> monsters)
        {
            return ((FlyingCannonMonster)monsters.Find(cm => (cm is FlyingCannonMonster)));
        } 
    }
}
