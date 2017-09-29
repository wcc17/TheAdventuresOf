using System;
namespace TheAdventuresOf
{
    public class SwoopMonster : Monster
    {
        public static float floatHeight;

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

            monsterTexture = AssetManager.Instance.swoopMonsterTexture;
        }

        public override void InitializeSpawn() {
            base.InitializeSpawn();

            if (spawnType == SPAWN_TOP)
            {
                ChooseRandomDirection();
            }

            isSpawning = true;
        }
    }
}
