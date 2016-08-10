using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.ComponentModel;

namespace TheAdventuresOf
{
	public class Monster : Character
	{
		public int moveDistanceLimit;
		public float moveDelayTime;

		float distanceMoved = 0;
		TimeSpan timeDelayed = TimeSpan.FromSeconds(0);
		bool delayMove = false;

		//don't want to instantiate a new Random object every frame
		Random rand = new Random();

		public override void InitializeAnimation()
		{
			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!delayMove)
			{
				if (!isMoving)
				{
					RandomizeMovement();
				}
				else {
					if (distanceMoved > moveDistanceLimit)
					{
						distanceMoved = 0;
						isMoving = false;

						delayMove = true;
					}

					//animation is handled here only 
					base.Update(gameTime, false);

					HandleMovement(gameTime);
				}
			}
			else {
				timeDelayed = timeDelayed.Add(gameTime.ElapsedGameTime);
				if (timeDelayed.TotalSeconds > moveDelayTime)
				{
					delayMove = false;
					timeDelayed = TimeSpan.FromSeconds(0);
				}
			}
		}

		void RandomizeMovement()
		{
			int randNext = rand.Next(0, 2);
			if (randNext == 0)
			{
				//if 0, start moving, otherwise don't
				isMoving = true;

				//and choose a random direction
				if (rand.Next(0, 2) == 0)
				{
					moveRight = false;
					moveLeft = true;
				}
				else {
					moveLeft = false;
					moveRight = true;
				}
			}
			else {
				delayMove = true;
			}
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			if (isMoving)
			{
				currentAnimation = walkAnimation;
			}
			else {
				currentAnimation = standAnimation;
			}
		}

		public override void HandleMovement(GameTime gameTime)
		{
			if (moveLeft)
			{
				Move(gameTime, LEFT);
				UpdateCharacterBounds();
			}
			else if (moveRight) {
				Move(gameTime, RIGHT);
				UpdateCharacterBounds();
			}
		}

		public override void Move(GameTime gameTime, int direction)
		{
			float distanceToMove = (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			switch (direction)
			{
				case LEFT:
					positionVector.X -= distanceToMove;
					distanceMoved += distanceToMove;
					break;
				case RIGHT:
					positionVector.X += distanceToMove;
					distanceMoved += distanceToMove;
					break;
			}
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);
		}
	}
}

