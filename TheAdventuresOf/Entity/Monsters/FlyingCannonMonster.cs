using System;
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
            upDownSpeed = flyingCannonMonster.upDownSpeed;
            actionDelayTime = flyingCannonMonster.actionDelayTime;
            monsterTexture = AssetManager.Instance.flyingCannonMonsterTexture;
            bulletStartYPos = flyingCannonMonster.bulletStartYPos;

            leftSideX = flyingCannonMonster.leftSideX;
            rightSideX = flyingCannonMonster.rightSideX;
        }

        public override void InitializeSpawn()
        {
            Reset();

            isSpawning = true;

            initializeBullet();
        }

        public override void HandleSpawn(GameTime gameTime) {
            
            if (positionVector.Y < groundLevel) {
                MoveUpDown(gameTime, DOWN);
            } else {
                InitializeMonster();

                //since spawning is complete, monster is rdy. want him to shoot immediately
                //if not, add delayAction = true to InitializeSpawn to stop this
                bullet.isActive = true;
            }
        }

        public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters)
        {
            FlyingCannonMonster existingCannonMonster = null;

            if (cannonMonsterCount > 0)
            {
                existingCannonMonster = (FlyingCannonMonster)monsters.Find(cm => (cm is FlyingCannonMonster));
            }

            ChooseSide(existingCannonMonster);
        }
    }
}
