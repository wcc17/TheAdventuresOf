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
			animationSpeed = sunMonster.animationSpeed;
			frameCount = sunMonster.frameCount;
			moveDistanceLimit = sunMonster.moveDistanceLimit;
			actionDelayTime = sunMonster.actionDelayTime;
			rotationSpeed = sunMonster.rotationSpeed;
			upDownSpeed = sunMonster.upDownSpeed;

			monsterTexture = AssetManager.Instance.sunMonsterTexture;
		}

		public override void InitializeSpawn()
		{
			Reset();

			//assuming that new X position is set in main Update function for now
            ChooseDirection();

			isSpawning = true;
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

