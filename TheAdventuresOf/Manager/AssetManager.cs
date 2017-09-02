using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{

	public class AssetManager
	{
		private static AssetManager instance;

		public const string androidFilePath = "Assets/Content/";
		public const string iosFilePath = "Content/";

        //splash textures
        public Texture2D splashTexture;

        //menu textures
        public Texture2D menuTexture;
        public Texture2D menuPlayButtonTexture;
        public Song menuSong;

		//game textures
		public Texture2D controllerTexture;
        public Texture2D swordTexture;
        public Texture2D heartTexture;
        public Texture2D emptyHeartTexture;
        public Texture2D leftArrowButtonTexture;
        public Texture2D rightArrowButtonTexture;
        public Texture2D upArrowButtonTexture;
        public SpriteFont font;

        //prelevel textures
        public Texture2D preLevelCharacterTexture;
        public Texture2D preLevelTexture;

		//level textures
		public Texture2D playerTexture;
		public Texture2D levelTexture;
		public Texture2D blockMonsterTexture;
		public Texture2D sunMonsterTexture;
		public Texture2D cannonMonsterTexture;
		public Texture2D bileMonsterTexture;
        public Texture2D spikeMonsterTexture;
        public Texture2D dashMonsterTexture;
        public Texture2D flyingCannonMonsterTexture;
        public Song levelOneSong;

		public Texture2D bulletTexture;
		public Texture2D bileTexture;

		public static string filePath; 

		public static AssetManager Instance {
			get {
				if (instance == null) {
					instance = new AssetManager();
				}
				return instance;
			}
		}

		private AssetManager() {
			#if __ANDROID__
				filePath = androidFilePath;
			//#endif
			//#if __IOS__
            #else
				filePath = iosFilePath;
			#endif
		}

        public void LoadSplashAssets(GraphicsDevice graphicsDevice, ContentManager contentManager) {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "splash_1080p.png"))
            {
                splashTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            font = contentManager.Load<SpriteFont>("arial");
            menuSong = contentManager.Load<Song>("Menu/mainmenu_music");
        }

        public void LoadMenuAssets(GraphicsDevice graphicsDevice) {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_1080p.png")) {
                menuTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png")) {
                menuPlayButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

		public void LoadGameAssets(GraphicsDevice graphicsDevice) {

            using (var stream = TitleContainer.OpenStream(filePath + "character_1080p.png")) {
                playerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
			using (var stream = TitleContainer.OpenStream(filePath + "controller_1080p.png")) {
				controllerTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "sword_1080p.png")) {
				swordTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "heart_1080p.png")) {
				heartTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(filePath + "emptyheart_1080p.png")) {
				emptyHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
            using (var stream = TitleContainer.OpenStream(filePath + "leftarrow_1080p.png")) {
                leftArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "rightarrow_1080p.png")) {
                rightArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "uparrow_1080p.png")) {
                upArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
		}

        //TODO: eventually add logic for reloading textures based on what level the player is on 
        public void LoadLevelAssets(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            //monsters
            string level1String;
            #if __IOS__
                level1String = "level1background_1080p.png";
            #elif __ANDROID__
                level1String = "level1background_1080p.png";
            #else
                level1String = "level1background_xbox_1080p.png";
            #endif

            using (var stream = TitleContainer.OpenStream(filePath + level1String)) {
                levelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(filePath + "blockmonster_1080p.png")) {
                blockMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "sunmonster_1080p.png")) {
                sunMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "cannonmonster_1080p.png")) {
                cannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "bilemonster_1080p.png")) {
                bileMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "spikemonster_1080p.png")) {
                spikeMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "dashmonster_1080p.png")) {
                dashMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "flyingcannonmonster_1080p.png")) {
                flyingCannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //projectiles
            using (var stream = TitleContainer.OpenStream(filePath + "bullet_1080p.png")) {
                bulletTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
			using (var stream = TitleContainer.OpenStream(filePath + "bile_1080p.png")) {
				bileTexture = Texture2D.FromStream(graphicsDevice, stream);
			}

            //music
            levelOneSong = contentManager.Load<Song>("level1_music");
		}

        public void LoadPreLevelAssets(GraphicsDevice graphicsDevice) {
            string preLevelFilePath = filePath + "PreLevel/";

            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level1_character_1080p.png")) {
                preLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level1_background_1080p.png"))
            {
                preLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        //TODO: needs to be called somewhere
        public void DisposePreLevelAssets() {
            preLevelCharacterTexture.Dispose();
            preLevelTexture.Dispose();
        }

        //TODO: needs to be called somewhere!
        public void DisposeMenuAssets() {
            splashTexture.Dispose();
            menuTexture.Dispose();
            menuPlayButtonTexture.Dispose();

            menuSong.Dispose();
        }

        //TODO: this needs to be called when new level happens and when game closes
		public void DisposeLevelAssets() {
			playerTexture.Dispose();
            swordTexture.Dispose();
			levelTexture.Dispose();
			blockMonsterTexture.Dispose();
			sunMonsterTexture.Dispose();
			cannonMonsterTexture.Dispose();
            bileMonsterTexture.Dispose();
            spikeMonsterTexture.Dispose();
            dashMonsterTexture.Dispose();
            flyingCannonMonsterTexture.Dispose();

            bulletTexture.Dispose();
            bileTexture.Dispose();

            levelOneSong.Dispose();
		}

        //TODO: this needs to be called somewhere
        public void DisposeGameAssets() {
            controllerTexture.Dispose();
            heartTexture.Dispose();
            emptyHeartTexture.Dispose();
            leftArrowButtonTexture.Dispose();
            rightArrowButtonTexture.Dispose();
            upArrowButtonTexture.Dispose(); 
        }
	}
}

