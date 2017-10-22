using System;
using System.Collections.Generic;
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

        //main menu textures
        public Texture2D mainMenuTexture;
        public Texture2D playButtonTexture;
        public Texture2D chooseLevelButtonTexture;
        public Song mainMenuSong;

        //choose level menu textures
        public Texture2D chooseButtonTexture;

        //game textures
        public Texture2D controllerTexture;
        public Texture2D progressBarTexture;
        public Texture2D progressBarFillTexture;
        public Texture2D leftArrowButtonTexture;
        public Texture2D rightArrowButtonTexture;
        public Texture2D jumpButtonTexture;
        public Texture2D pauseButtonTexture;
        public Texture2D bronzeCoinTexture;
        public Texture2D silverCoinTexture;
        public Texture2D goldCoinTexture;
        public Texture2D pauseBackgroundTexture;
        public SpriteFont font;

        //prelevel textures
        public Texture2D preLevelCharacterTexture;
        public Texture2D preLevelTexture;

        //store level textures
        public Texture2D storeLevelCharacterTexture;
        public Texture2D storeLevelTexture;

        //player textures
        public Texture2D playerTexture;

        //accessory textures
        Dictionary<String, Texture2D> accessoryTextures;


        //level textures
        public Texture2D levelTexture;
        public Texture2D blockMonsterTexture;
        public Texture2D sunMonsterTexture;
        public Texture2D cannonMonsterTexture;
        public Texture2D bileMonsterTexture;
        public Texture2D spikeMonsterTexture;
        public Texture2D dashMonsterTexture;
        public Texture2D flyingCannonMonsterTexture;
        public Texture2D undergroundMonsterTexture;
        public Texture2D swoopMonsterTexture;
        public Song levelOneSong;

        public Texture2D bulletTexture;
        public Texture2D bileTexture;

        public static string filePath;

        //xbox related stuff
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
            storeLevelString = "store_level_1080p.png";
            loadOnScreenController = true;
#else
            storeLevelString = "store_level_xbox_1080p.png";
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
            mainMenuSong = contentManager.Load<Song>("Menu/mainmenu_music");
        }

        public void LoadMainMenuAssets(GraphicsDevice graphicsDevice)
        {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_1080p.png"))
            {
                mainMenuTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png"))
            {
                playButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png")) //TODO: make a choose level button
            {
                chooseLevelButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadChooseLevelMenuAssets(GraphicsDevice graphicsDevice) {
            string menuFilePath = filePath + "Menu/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png")) //TODO: CHANGE
            {
                chooseButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadPlayerAssets(GraphicsDevice graphicsDevice, int levelNumber) {
            String playerFilePath = filePath + "Player/level" + levelNumber + "_";

            //player textures
            using (var stream = TitleContainer.OpenStream(playerFilePath + "character_1080p.png"))
            {
                playerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadPlayerAccessoryAssets(GraphicsDevice graphicsDevice, List<Accessory> accessories) {
            accessoryTextures = new Dictionary<string, Texture2D>();
            String accessoryFilePath = filePath + "Player/";
            String appendToEnd = "_1080p.png"; //TODO: eventually change this based on resolution of screen

            foreach(Accessory accessory in accessories) {
                String fullAccessoryFilePath = accessoryFilePath + accessory.name + appendToEnd;

                Texture2D accessoryTexture;
                using (var stream = TitleContainer.OpenStream(fullAccessoryFilePath)) {
                    accessoryTexture = Texture2D.FromStream(graphicsDevice, stream);
                }

                accessoryTextures.Add(accessory.name, accessoryTexture);
            }
        }

        public void LoadGameAssets(GraphicsDevice graphicsDevice) {
            String playerFilePath = filePath + "Player/";
            String gameFilePath = filePath + "Game/";

			//game textures
			using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_1080p.png")) {
                progressBarTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
			using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_fill_1080p.png")) {
				progressBarFillTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_gold_1080p.png")) {
                goldCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_silver_1080p.png")) {
                silverCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_bronze_1080p.png")) {
                bronzeCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "pause_background_1080p.png")) {
                pauseBackgroundTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            if(loadOnScreenController) {
                using (var stream = TitleContainer.OpenStream(gameFilePath + "controller_1080p.png")) {
                    controllerTexture = Texture2D.FromStream(graphicsDevice, stream);
                }
                using (var stream = TitleContainer.OpenStream(gameFilePath + "leftarrow_1080p.png")) {
                    leftArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
                }
                using (var stream = TitleContainer.OpenStream(gameFilePath + "rightarrow_1080p.png")) {
                    rightArrowButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
                }
                using (var stream = TitleContainer.OpenStream(gameFilePath + "button_1080p.png")) {
                    jumpButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
                }
                using (var stream = TitleContainer.OpenStream(gameFilePath + "pause_1080p.png")) {
                    pauseButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
                }
            }
        }

        public void LoadLevelAssets(GraphicsDevice graphicsDevice, ContentManager contentManager, int levelNumber)
        {
            string levelFilePath = filePath + "Level/";
            string monsterFilePath = filePath + "Monster/Level" + levelNumber + "/";
            string projectileFilePath = filePath + "Projectile/";

            using (var stream = TitleContainer.OpenStream(levelFilePath + getLevelString(levelNumber)))
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
            using (var stream = TitleContainer.OpenStream(monsterFilePath + "swoopmonster_1080p.png")) 
            {
                swoopMonsterTexture = Texture2D.FromStream(graphicsDevice, stream);    
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

        public void LoadPreLevelAssets(GraphicsDevice graphicsDevice, int levelNumber)
        {
            string preLevelFilePath = filePath + "PreLevel/";

            using (var stream = TitleContainer.OpenStream(preLevelFilePath + "pre_level" + levelNumber + "character_1080p.png"))
            {
                preLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(preLevelFilePath + getPreLevelString(levelNumber)))
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

        public Texture2D GetAccessoryTexture(string accessoryName) {
            return accessoryTextures.GetValueOrDefault(accessoryName);
        }

        public void DisposePreLevelAssets() {
            preLevelCharacterTexture.Dispose();
            preLevelTexture.Dispose();
        }

        public void DisposeMainMenuAssets() {
            //splashTexture.Dispose(); TODO: not disposing right now because its used as load screen
            mainMenuTexture.Dispose();
            playButtonTexture.Dispose();
            chooseLevelButtonTexture.Dispose();

            mainMenuSong.Dispose();
        }

        public void DisposeChooseLevelMenuAssets() {
            chooseButtonTexture.Dispose();
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
            swoopMonsterTexture.Dispose();

            bulletTexture.Dispose();
            bileTexture.Dispose();

            //TODO: need to dispose of level music
            //levelOneSong.Dispose();

            foreach(Texture2D accessoryTexture in accessoryTextures.Values) {
                accessoryTexture.Dispose();
            }
		}

        //TODO: this needs to be called somewhere
        public void DisposeGameAssets() {
            controllerTexture.Dispose();
            progressBarTexture.Dispose();
            progressBarFillTexture.Dispose();
            leftArrowButtonTexture.Dispose();
            rightArrowButtonTexture.Dispose();
            jumpButtonTexture.Dispose();
            pauseButtonTexture.Dispose();
            pauseBackgroundTexture.Dispose();

            bronzeCoinTexture.Dispose();
            silverCoinTexture.Dispose();
            goldCoinTexture.Dispose();

            //TODO: these should be disposed in every level
            playerTexture.Dispose();
        }

        string getPreLevelString(int levelNumber) {
            string preLevelString = "pre_level" + levelNumber + "background_";

#if __IOS__ || __ANROID__
            preLevelString += "1080p.png";
#else
            preLevelString += "xbox_1080p.png";
#endif

            return preLevelString;
        }

        string getLevelString(int levelNumber)
        {
            string levelString = "level" + levelNumber + "background_";

#if __IOS__ || __ANROID__
            levelString += "1080p.png";
#else
            levelString += "xbox_1080p.png";
#endif

            return levelString;
        }
	}
}

