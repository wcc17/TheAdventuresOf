using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class FlyingCannonMonster : Monster
    {
        public static float leftSideX;
        public static float rightSideX;
        public static float floatHeight;
        public static float boundOffset;

        public void SetFlyingCannonMonsterData(FlyingCannonMonster flyingCannonMonster)
        {
            entityTag = flyingCannonMonster.entityTag;
            frameCount = flyingCannonMonster.frameCount;
            rotationSpeed = flyingCannonMonster.rotationSpeed;
            upDownSpeed = flyingCannonMonster.upDownSpeed;
            actionDelayTime = flyingCannonMonster.actionDelayTime;
            animationSpeed = flyingCannonMonster.animationSpeed;

            monsterTexture = AssetManager.Instance.flyingCannonMonsterTexture;
        }

        public override void InitializeSpawn() 
        {
            Reset();

            ChooseRandomDirection();

            isSpawning = true;
            delayAction = true;
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
    }
}
