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

        //store level textures
        public Texture2D storeLevelCharacterTexture;
        public Texture2D storeLevelTexture;

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
        public Texture2D undergroundMonsterTexture;
        public Song levelOneSong;

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
            //TODO: should limit the preprocessor directives to this constructor method.
            //for xbox assets, just add xbox to the filename string. This may involve renaming xbox assets.
            //TODO: stop including xbox in the name of the asset, just name it the same as the iOS one and we won't have this problem? will be harder to tell apart though
#if __ANDROID__
            filePath = androidFilePath;
            //#endif
            //#if __IOS__
#else
			filePath = iosFilePath;
#endif
        }

        public void LoadSplashAssets(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "splash_1080p.png"))
            {
                splashTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            font = contentManager.Load<SpriteFont>("Game/arial");
            menuSong = contentManager.Load<Song>("Menu/mainmenu_music");
        }

        public void LoadMenuAssets(GraphicsDevice graphicsDevice)
        {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_1080p.png"))
            {
                menuTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png"))
            {
                menuPlayButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadGameAssets(GraphicsDevice graphicsDevice)
        {
            String playerFilePath = filePath + "Player/";
            String gameFilePath = filePath + "Game/";

            //player textures
            //TODO: should have its own "LoadPlayerAssets" method
            using (var stream = TitleContainer.OpenStream(playerFilePath + "character_1080p.png"))
            {
                playerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(playerFilePath + "sword_1080p.png"))
            {
                swordTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //game textures
            using (var stream = TitleContainer.OpenStream(gameFilePath + "heart_1080p.png"))
            {
                heartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "emptyheart_1080p.png"))
            {
                emptyHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

#if __IOS__ || __ANDROID__
            using (var stream = TitleContainer.OpenStream(gameFilePath + "controller_1080p.png"))
            {
                controllerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "leftarrow_1080p.png"))
            {
                leftArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "rightarrow_1080p.png"))
            {
                rightArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "uparrow_1080p.png"))
            {
                upArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif
        }

        //TODO: eventually add logic for reloading textures based on what level the player is on 
        public void LoadLevelAssets(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            string levelFilePath = filePath + "Level/";
            string monsterFilePath = filePath + "Monster/";
            string projectileFilePath = filePath + "Projectile/";

            string level1String;
#if __IOS__ || __ANDROID__
            level1String = "level1background_1080p.png";
#else
            level1String = "level1background_xbox_1080p.png";
#endif
            using (var stream = TitleContainer.OpenStream(levelFilePath + level1String))
            {
                levelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(monsterFilePath + "blockmonster_1080p.png"))
            {
                blockMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "sunmonster_1080p.png"))
            {
                sunMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "cannonmonster_1080p.png"))
            {
                cannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "bilemonster_1080p.png"))
            {
                bileMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "spikemonster_1080p.png"))
            {
                spikeMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "dashmonster_1080p.png"))
            {
                dashMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "flyingcannonmonster_1080p.png"))
            {
                flyingCannonMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "undergroundmonster_1080p.png"))
            {
                undergroundMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //projectiles
            using (var stream = TitleContainer.OpenStream(projectileFilePath + "bullet_1080p.png"))
            {
                bulletTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(projectileFilePath + "bile_1080p.png"))
            {
                bileTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //music
            levelOneSong = contentManager.Load<Song>("Level/level1_music");
        }

        public void LoadPreLevelAssets(GraphicsDevice graphicsDevice)
        {
            string preLevelFilePath = filePath + "PreLevel/";

            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level1_character_1080p.png"))
            {
                preLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

#if __IOS__ || __ANDROID__
            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level1_background_1080p.png"))
            {
                preLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#else
            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level1_background_xbox_1080p.png"))
            {
                preLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif

        }

        public void LoadStoreLevelAssets(GraphicsDevice graphicsDevice) {
            string storeLevelFilePath = filePath + "StoreLevel/";

            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_level_character_1080p.png")) {
                storeLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

#if __IOS__ || __ANDROID__
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_level_1080p.png"))
            {
                storeLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#else
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_level_xbox_1080p.png"))
            {
                storeLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif
        }

        public void DisposePreLevelAssets() {
            preLevelCharacterTexture.Dispose();
            preLevelTexture.Dispose();
        }

        public void DisposeMenuAssets() {
            //splashTexture.Dispose(); TODO: not disposing right now because its used as load screen
            menuTexture.Dispose();
            menuPlayButtonTexture.Dispose();

            menuSong.Dispose();
        }

        public void DisposeStoreAssets() {
            storeLevelTexture.Dispose();
            storeLevelCharacterTexture.Dispose();
        }

		public void DisposeLevelAssets() {
			levelTexture.Dispose();
			blockMonsterTexture.Dispose();
			sunMonsterTexture.Dispose();
			cannonMonsterTexture.Dispose();
            bileMonsterTexture.Dispose();
            spikeMonsterTexture.Dispose();
            dashMonsterTexture.Dispose();
            flyingCannonMonsterTexture.Dispose();
            undergroundMonsterTexture.Dispose();

            bulletTexture.Dispose();
            bileTexture.Dispose();
		}

        //TODO: should handle disposing of music in MusicManager
        public void DisposeMusic() {
            //MusicManager will probably only delete 1 song at a time
            //this is a placeholder so I see the TODO
            //levelOneMusic.Dispose(); gum
        }

        //TODO: this needs to be called somewhere
        public void DisposeGameAssets() {
            controllerTexture.Dispose();
            heartTexture.Dispose();
            emptyHeartTexture.Dispose();
            leftArrowButtonTexture.Dispose();
            rightArrowButtonTexture.Dispose();
            upArrowButtonTexture.Dispose();

            playerTexture.Dispose();
            swordTexture.Dispose();
        }
	}
}

