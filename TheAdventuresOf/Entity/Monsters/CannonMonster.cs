using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class CannonMonster : BaseCannonMonster
	{
		public static float groundOffset;

		public void SetCannonMonsterData(CannonMonster cannonMonster)
		{
			entityTag = cannonMonster.entityTag;
			frameCount = cannonMonster.frameCount;
			rotationSpeed = cannonMonster.rotationSpeed;
			upDownSpeed = cannonMonster.upDownSpeed;
			actionDelayTime = cannonMonster.actionDelayTime;
			monsterTexture = AssetManager.Instance.cannonMonsterTexture;
            boundOffset = cannonMonster.boundOffset;
            bulletStartYPos = cannonMonster.bulletStartYPos;

            leftSideX = cannonMonster.leftSideX;
            rightSideX = cannonMonster.rightSideX;
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

				//since spawning is complete, monster is ready to go. want him to shoot as soon as he spawns
				//if we dont want that anymore, add delayAction = true to InitSpawn and get rid of this
				bullet.isActive = true;
			}
		}

        public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters) {

            CannonMonster existingCannonMonster = null;

            if(cannonMonsterCount > 0) {
                existingCannonMonster = (CannonMonster)monsters.Find(cm => (cm is CannonMonster));
            }

            ChooseSide(existingCannonMonster);
        }
	}
}

