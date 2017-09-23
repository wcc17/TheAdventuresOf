using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
	public class BlockMonster : Monster
	{
		public void SetBlockMonsterData(BlockMonster blockMonster)
		{
			entityTag = blockMonster.entityTag;
			speed = blockMonster.speed;
            spawnSpeed = blockMonster.spawnSpeed;
            deathSpeed = blockMonster.deathSpeed;
			animationSpeed = blockMonster.animationSpeed;
			frameCount = blockMonster.frameCount;
			moveDistanceLimit = blockMonster.moveDistanceLimit;
			actionDelayTime = blockMonster.actionDelayTime;
			rotationSpeed = blockMonster.rotationSpeed;
            damage = blockMonster.damage;

			monsterTexture = AssetManager.Instance.blockMonsterTexture;
		}

        public override void InitializeAnimation() 
        {
            base.InitializeAnimation();

            walkAnimation = new Animation();
            walkAnimation.AddFrame(new Rectangle(entityWidth,
                                                 0,
                                                 entityWidth,
                                                 entityHeight), TimeSpan.FromSeconds(animationSpeed));
        }

		public override void InitializeSpawn()
		{
			base.InitializeSpawn();

			//assuming that new X position is set in main Update function for now
			ChooseRandomDirection();

			if (moveLeft)
			{
				rotation = RIGHT_ANGLE_RADIANS;
			}
			else
			{
				rotation = -RIGHT_ANGLE_RADIANS;
			}

			isSpawning = true;
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			if (isMoving)
			{
				currentAnimation = walkAnimation;
			}
			else {
				currentAnimation = baseAnimation;
			}
		}
	}
}

