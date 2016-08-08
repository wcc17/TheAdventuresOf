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

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.levelTexture, levelPositionVector);
		}
	}
}

