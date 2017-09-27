using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class SunMonster : Monster
	{
		public static float floatHeight;

		public void SetSunMonsterData(SunMonster sunMonster)
		{
			entityTag = sunMonster.entityTag;
			speed = sunMonster.speed;
            spawnSpeed = sunMonster.spawnSpeed;
            deathSpeed = sunMonster.deathSpeed;
			animationSpeed = sunMonster.animationSpeed;
			frameCount = sunMonster.frameCount;
			moveDistanceLimit = sunMonster.moveDistanceLimit;
			actionDelayTime = sunMonster.actionDelayTime;
			rotationSpeed = sunMonster.rotationSpeed;
            damage = sunMonster.damage;

			monsterTexture = AssetManager.Instance.sunMonsterTexture;
		}

		public override void InitializeSpawn()
		{
			base.InitializeSpawn();

            //assuming that new X position is set in main Update function for now
            if(spawnType == SPAWN_TOP) {
                ChooseRandomDirection();
            }

			isSpawning = true;
		}
	}
}

