using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public static class AssetManager
	{
		//game textures
		public static Texture2D controllerTexture;
		public static Texture2D arrowButtonTexture;
		public static Texture2D swordTexture;

		//level textures
		public static Texture2D playerTexture;
		public static Texture2D levelTexture;
		public static Texture2D blockMonsterTexture;

		//TODO: opening "Content/controls1080p.png" on android throws exception. png is actually in Assets/Content/controls1080p.png. will need a function for this
		public static void LoadGameAssets(GraphicsDevice graphicsDevice)
		{
			using (var stream = TitleContainer.OpenStream("Content/arrow_1080p.png"))
			{
				arrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/controller_1080p.png"))
			{
				controllerTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/sword_1080p.png"))
			{
				swordTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
		}

		//TODO: eventually add logic for reloading textures based on what level the player is on 
		public static void LoadLevelAssets(GraphicsDevice graphicsDevice)
		{
			using (var stream = TitleContainer.OpenStream("Content/character_1080p.png"))
			{
				playerTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/level1background_1080p.png"))
			{
				levelTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/blockmonster_1080p.png"))
			{
				blockMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
		}

		public static void DisposeLevelAssets()
		{
			playerTexture.Dispose();
			levelTexture.Dispose();
			blockMonsterTexture.Dispose();
		}
	}
}

