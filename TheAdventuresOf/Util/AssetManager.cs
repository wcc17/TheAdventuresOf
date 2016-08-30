﻿using System;
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
		public static Texture2D heartTexture;
		public static Texture2D emptyHeartTexture;

		//level textures
		public static Texture2D playerTexture;
		public static Texture2D levelTexture;
		public static Texture2D blockMonsterTexture;
		public static Texture2D sunMonsterTexture;
		public static Texture2D cannonMonsterTexture;

		public static Texture2D bulletTexture;


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
			using (var stream = TitleContainer.OpenStream("Content/heart_1080p.png"))
			{
				heartTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/emptyheart_1080p.png"))
			{
				emptyHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
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
			using (var stream = TitleContainer.OpenStream("Content/sunmonster_1080p.png"))
			{
				sunMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/cannonmonster_1080p.png"))
			{
				cannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream("Content/bullet_1080p.png"))
			{
				bulletTexture = Texture2D.FromStream(graphicsDevice, stream);
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

