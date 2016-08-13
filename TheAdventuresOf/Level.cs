using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
namespace TheAdventuresOf
{
	public class Level
	{
		static Vector2 levelPositionVector;

		static Rectangle leftSideBounds;
		static Rectangle rightSideBounds;
		static int leftBoundWidth = 135;
		static int rightBoundWidth = 125;

		public static float groundLevel = 690f;

		static Random rand = new Random();

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.levelTexture.Height);
		}

		public void CheckCollision(Character character)
		{
			if (leftSideBounds.Intersects(character.characterBounds))
			{
				Console.WriteLine("Intersecting on the left");
				character.HandleLevelBoundCollision(Character.LEFT, leftBoundWidth);
			}

			if (rightSideBounds.Intersects(character.characterBounds))
			{
				Console.WriteLine("Intersecting on the right");
				character.HandleLevelBoundCollision(Character.RIGHT, AssetManager.levelTexture.Width - rightBoundWidth);
			}
		}

		public int GetRandomXLocation(float characterWidth)
		{
			//character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
			//when generating a random number, it goes up to the second number - 1, which is why we include + 1
			int X = rand.Next(135, AssetManager.levelTexture.Width - rightBoundWidth - (int)characterWidth + 1);

			return X;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.levelTexture, levelPositionVector);
		}
	}
}

