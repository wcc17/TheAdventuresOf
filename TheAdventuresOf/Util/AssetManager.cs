using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{

	public class AssetManager
	{
		private static AssetManager instance;

		public const string androidFilePath = "Assets/Content/";
		public const string iosFilePath = "Content/";

		//game textures
		public Texture2D controllerTexture;
        public Texture2D swordTexture;
        public Texture2D heartTexture;
        public Texture2D emptyHeartTexture;
        public Texture2D leftArrowButtonTexture;
        public Texture2D rightArrowButtonTexture;
        public Texture2D upArrowButtonTexture;

		//level textures
		public Texture2D playerTexture;
		public Texture2D levelTexture;
		public Texture2D blockMonsterTexture;
		public Texture2D sunMonsterTexture;
		public Texture2D cannonMonsterTexture;
		public Texture2D bileMonsterTexture;
        public Texture2D spikeMonsterTexture;
        public Texture2D dashMonsterTexture;

		public Texture2D bulletTexture;
		public Texture2D bileTexture;

		public static string filePath; 

		public static AssetManager Instance
		{
			get
			{
				if (instance == null)
				{
					instance = new AssetManager();
				}
				return instance;
			}
		}

		private AssetManager()
		{
			#if __ANDROID__
				filePath = androidFilePath;
			#endif
			#if __IOS__
				filePath = iosFilePath;
			#endif
		}

		public void LoadGameAssets(GraphicsDevice graphicsDevice)
		{
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
            using (var stream = TitleContainer.OpenStream(filePath + "leftarrow_1080p.png"))
            {
                leftArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "rightarrow_1080p.png"))
            {
                rightArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "uparrow_1080p.png"))
            {
                upArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
		}

        //TODO: eventually add logic for reloading textures based on what level the player is on 
        public void LoadLevelAssets(GraphicsDevice graphicsDevice)
        {
            //monsters
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
            using (var stream = TitleContainer.OpenStream(filePath + "bilemonster_1080p.png"))
            {
                bileMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "spikemonster_1080p.png"))
            {
                spikeMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "dashmonster_1080p.png"))
            {
                dashMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //projectiles
            using (var stream = TitleContainer.OpenStream(filePath + "bullet_1080p.png"))
            {
                bulletTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
			using (var stream = TitleContainer.OpenStream(filePath + "bile_1080p.png"))
			{
				bileTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
		}

        //TODO: this needs to be called when new level happens and when game closes
		public void DisposeLevelAssets()
		{
			playerTexture.Dispose();
            swordTexture.Dispose();
			levelTexture.Dispose();
			blockMonsterTexture.Dispose();
			sunMonsterTexture.Dispose();
			cannonMonsterTexture.Dispose();
            bileMonsterTexture.Dispose();
            spikeMonsterTexture.Dispose();
            dashMonsterTexture.Dispose();

            bulletTexture.Dispose();
            bileTexture.Dispose();
		}

        //TODO: this needs to be called somewhere
        public void DisposeGameAssets() 
        {
            controllerTexture.Dispose();
            heartTexture.Dispose();
            emptyHeartTexture.Dispose();
            leftArrowButtonTexture.Dispose();
            rightArrowButtonTexture.Dispose();
            upArrowButtonTexture.Dispose(); 
        }
	}
}

