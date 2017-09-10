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

        //xbox related stuff
        string level1String;
        string preLevelString;
        string storeLevelString;
        bool loadOnScreenController;

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
#else
            filePath = iosFilePath; //windows uses ios file path for now
#endif

#if __IOS__ || __ANROID__
            level1String = "level1background_1080p.png";
            preLevelString = "pre_level1_background_1080p.png";
            storeLevelString = "store_level_1080p.png";
            loadOnScreenController = true;
#else
            level1String = "level1background_xbox_1080p.png";
            preLevelString = "pre_level1_background_xbox_1080p.png";
            storeLevelString = store_level_xbox_1080p.png";
            loadOnScreenController = false;
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

        public void LoadPlayerAssets(GraphicsDevice graphicsDevice) {
            String playerFilePath = filePath + "Player/";
            String gameFilePath = filePath + "Game/";

            //player textures
            using (var stream = TitleContainer.OpenStream(playerFilePath + "character_1080p.png"))
            {
                playerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(playerFilePath + "sword_1080p.png"))
            {
                swordTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadGameAssets(GraphicsDevice graphicsDevice) {
            String playerFilePath = filePath + "Player/";
            String gameFilePath = filePath + "Game/";

            //game textures
            using (var stream = TitleContainer.OpenStream(gameFilePath + "heart_1080p.png"))
            {
                heartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "emptyheart_1080p.png"))
            {
                emptyHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            if(loadOnScreenController) {
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
            }
        }

        //TODO: eventually add logic for reloading textures based on what level the player is on 
        public void LoadLevelAssets(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            string levelFilePath = filePath + "Level/";
            string monsterFilePath = filePath + "Monster/";
            string projectileFilePath = filePath + "Projectile/";

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

            using (var stream = TitleContainer.OpenStream(preLevelFilePath + preLevelString))
            {
                preLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

        }

        public void LoadStoreLevelAssets(GraphicsDevice graphicsDevice) {
            string storeLevelFilePath = filePath + "StoreLevel/";

            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_level_character_1080p.png")) {
                storeLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + storeLevelString))
            {
                storeLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
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

            //TODO: need to dispose of level music
            //levelOneSong.Dispose();
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

