using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
	public class SunMonster : Monster
	{
		public float floatHeight;

		public SunMonster()
		{
		}

		public override void InitializeSpawn()
		{
			reset();

			//assuming that new X position is set in main Update function for now
			ChooseRandomDirection();

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
				InitializeMonsterAfterSpawn();
			}
		}
	}
}

