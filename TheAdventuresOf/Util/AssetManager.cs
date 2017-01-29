using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public static class AssetManager
	{
		public const string androidFilePath = "Assets/Content/";
		public const string iosFilePath = "Content/";

		//game textures
		public static Texture2D controllerTexture;
		public static Texture2D arrowButtonTexture;
		public static Texture2D swordTexture;
		public static Texture2D heartTexture;
		public static Texture2D emptyHeartTexture;

		//level textures
		public static Texture2D playerTexture;
		public static Texture2D levelTexture;
		public static Texture2D blockMonsterTexture;
		public static Texture2D sunMonsterTexture;
		public static Texture2D cannonMonsterTexture;
		public static Texture2D bileMonsterTexture;

		public static Texture2D bulletTexture;
		public static Texture2D bileTexture;

		public static string filePath; 

		public static void InitializeAssetManager()
		{
			#if __ANDROID__
				filePath = androidFilePath;
			#endif
			#if __IOS__
				filePath = iosFilePath;
			#endif
		}

		public static void LoadGameAssets(GraphicsDevice graphicsDevice)
		{
			using (var stream = TitleContainer.OpenStream(filePath + "arrow_1080p.png"))
			{
				arrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "controller_1080p.png"))
			{
				controllerTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "sword_1080p.png"))
			{
				swordTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "heart_1080p.png"))
			{
				heartTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "emptyheart_1080p.png"))
			{
				emptyHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
		}

		//TODO: eventually add logic for reloading textures based on what level the player is on 
		public static void LoadLevelAssets(GraphicsDevice graphicsDevice)
		{
			using (var stream = TitleContainer.OpenStream(filePath + "character_1080p.png"))
			{
				playerTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "level1background_1080p.png"))
			{
				levelTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "blockmonster_1080p.png"))
			{
				blockMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "sunmonster_1080p.png"))
			{
				sunMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "cannonmonster_1080p.png"))
			{
				cannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "bullet_1080p.png"))
			{
				bulletTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "bilemonster_1080p.png"))
			{
				bileMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "bile_1080p.png"))
			{
				bileTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
		}

		public static void DisposeLevelAssets()
		{
			playerTexture.Dispose();
			levelTexture.Dispose();
			blockMonsterTexture.Dispose();
			sunMonsterTexture.Dispose();
			cannonMonsterTexture.Dispose();
		}
	}
}

