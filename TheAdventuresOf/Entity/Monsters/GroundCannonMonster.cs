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

            leftSideX = groundCannonMonster.leftSideX;
            rightSideX = groundCannonMonster.rightSideX;
		}

        public override void InitializeSpawn()
        {
            Reset();

            if (moveLeft)
            {
                rotation = RIGHT_ANGLE_RADIANS;
            }
            else
            {
                rotation = -RIGHT_ANGLE_RADIANS;
            }

            isSpawning = true;

            initializeBullet();
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

				//since spawning is complete, monster is ready to go. want him to shoot as soon as he spawns
				//if we dont want that anymore, add delayAction = true to InitSpawn and get rid of this
				bullet.isActive = true;
			}
		}

        public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters) {

            GroundCannonMonster existingCannonMonster = null;

            if(cannonMonsterCount > 0) {
                existingCannonMonster = (GroundCannonMonster)monsters.Find(cm => (cm is GroundCannonMonster));
            }

            ChooseSide(existingCannonMonster);
        }
	}
}

