using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
	public class BlockMonster : Monster
	{
		public BlockMonster()
		{
		}

		public void HandleAnimation(GameTime gameTime)
		{
			if (isMoving)
			{
				currentAnimation = walkAnimation;
			}
			else {
				currentAnimation = standAnimation;
			}
		}
	}
}

