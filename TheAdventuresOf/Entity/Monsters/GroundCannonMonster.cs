﻿using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class GroundCannonMonster : BaseCannonMonster
	{
		public static float groundOffset;

		public void SetCannonMonsterData(GroundCannonMonster groundCannonMonster)
		{
			entityTag = groundCannonMonster.entityTag;
			frameCount = groundCannonMonster.frameCount;
			rotationSpeed = groundCannonMonster.rotationSpeed;
			actionDelayTime = groundCannonMonster.actionDelayTime;
			monsterTexture = AssetManager.Instance.cannonMonsterTexture;
            boundOffset = groundCannonMonster.boundOffset;
            bulletYOffset = groundCannonMonster.bulletYOffset;
            spawnSpeed = groundCannonMonster.spawnSpeed;
            deathSpeed = groundCannonMonster.deathSpeed;
            damage = groundCannonMonster.damage;
            fadeSpeed = groundCannonMonster.fadeSpeed;

            leftSideX = groundCannonMonster.leftSideX;
            rightSideX = groundCannonMonster.rightSideX;
		}

        public override void InitializeMonster() {
            base.InitializeMonster();

            //since spawning is complete, monster is ready to go. want him to shoot as soon as he spawns
            //if we dont want that anymore, add delayAction = true to InitSpawn and get rid of this
            bullet.isActive = true;
        }

        public override void InitializeSpawn()
        {
            base.InitializeSpawn();

            if (moveLeft)
            {
                rotation = RIGHT_ANGLE_RADIANS;
            }
            else
            {
                rotation = -RIGHT_ANGLE_RADIANS;
            }

            isSpawning = true;

            InitializeBullet();
        }

        public override BaseCannonMonster FindExistingCannonMonster(List<Monster> monsters)
        {
            return ((GroundCannonMonster)monsters.Find(cm => (cm is GroundCannonMonster)));
        } 
	}
}

