using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Media;

namespace TheAdventuresOf
{

    public class AssetManager
    {
        private static AssetManager instance;

        public ContentManager soundContentManager;
        public ContentManager musicContentManager;
        public ContentManager fontContentManager;

        public const string androidFilePath = "Assets/Content/";
        public const string iosFilePath = "Content/";

        //textures that should be loaded from start to finish
        public Texture2D splashTexture;
        public Texture2D blackBackgroundTexture;

        //main menu textures
        public Texture2D mainMenuTexture;
        public Texture2D playButtonTexture;
        public Texture2D chooseLevelButtonTexture;
        public Texture2D helpButtonTexture;

        //choose level menu textures
        public Texture2D chooseButtonTexture;
        public Texture2D chooseEndlessButtonTexture;
        public Texture2D chooseLevelMenuLeftArrowTexture;
        public Texture2D chooseLevelMenuRightArrowTexture;
        public Texture2D chooseLevelMenuBackArrowTexture;
        public Texture2D chooseLevelPreviewOutlineTexture;
        public Texture2D chooseLevelLockedPreviewTexture;
        public List<Texture2D> chooseLevelPreviewTextures;

        //help menu textures
        public Texture2D helpMenuBackgroundTexture;
        public Texture2D helpMenuBackButtonTexture;

        //used by both choose level menu and main menu
        public Texture2D arrowOutlineTexture;
        public Texture2D buttonOutlineTexture;

        //game textures
        public Texture2D controllerTexture;
        public Texture2D progressBarOutlineTexture;
        public Texture2D progressBarHalfOutlineTexture;
        public Texture2D progressBarFillHealthTexture;
        public Texture2D progressBarFillShieldTexture;
        public Texture2D progressBarFillLevelTexture;
        public Texture2D leftArrowButtonTexture;
        public Texture2D rightArrowButtonTexture;
        public Texture2D jumpButtonTexture;
        public Texture2D pauseButtonTexture;
        public Texture2D bronzeCoinTexture;
        public Texture2D silverCoinTexture;
        public Texture2D goldCoinTexture;
        public Texture2D transparentBlackBackgroundTexture;
        public Texture2D quitButtonTexture;
        public Texture2D heartSmallTexture;
        public Texture2D heartTexture;
        public SpriteFont font;

        //game sound effects
        public SoundEffect gameOverSoundEffect;
        public SoundEffect bigCoinPickupSoundEffect;
        public SoundEffect bigHeartPickupSoundEffect;
        public SoundEffect hurtSoundEffect;
        public SoundEffect jumpSoundEffect;
        public SoundEffect littleCoinPickupSoundEffect;
        public SoundEffect monsterHurtSoundEffect;
        public SoundEffect selectSoundEffect;
        public SoundEffect smallHeartPickupSoundEffect;
        public SoundEffect explosionSoundEffect;
        public SoundEffect victorySoundEffect;
        public SoundEffect purchaseSoundEffect;
        public SoundEffect purchaseDeniedSoundEffect;
        public bool soundEffectsAlreadyLoaded;

        //prelevel textures
        public Texture2D preLevelCharacterTexture;
        public Texture2D preLevelTexture;

        //store level textures
        public Texture2D storeLevelCharacterTexture;
        public Texture2D storeLevelTexture;
        public Texture2D storeLevelSwordTexture;
        public Texture2D storeLevelHeartTexture;
        public Texture2D storeLevelShieldTexture;
        public Texture2D storeLevelCoinTexture;
        public Texture2D storeLevelBigBoxTexture;
        public Texture2D storeLevelSmallBoxTexture;
        public Texture2D storeLevelSignTexture;

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

        //only one song will be playing at a time
        public Song currentSong;

        public Texture2D bulletTexture;
        public Texture2D bileTexture;

        public static string filePath;

        bool levelMusicLoaded;

        //xbox related stuff for the store level only
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

#if __IOS__ || __ANDROID__
            loadOnScreenController = true;
#else
            loadOnScreenController = false;
#endif
        }


        public void LoadSplashAssets(GraphicsDevice graphicsDevice)
        {
            string menuFilePath = filePath + "Menu/splash/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "splash_1080p.png"))
            {
                splashTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            String gameFilePath = filePath + "Game/";
            string blackBackgroundTexturePath = "background_black_1080p.png";
#if !__IOS__ && !__ANDROID__
            blackBackgroundTexturePath = "background_black_xbox_1080p.png";
#endif
            using (var stream = TitleContainer.OpenStream(gameFilePath + blackBackgroundTexturePath))
            {
                blackBackgroundTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            fontContentManager = new ContentManager(TheAdventuresOf.contentManager.ServiceProvider, TheAdventuresOf.contentManager.RootDirectory);
            font = fontContentManager.Load<SpriteFont>("Game/titilliam-web-regular");
            loadMusic("Menu/mainmenu_music");
        }

        public void LoadMainMenuAssets(GraphicsDevice graphicsDevice)
        {
            string menuFilePath = filePath + "Menu/main/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_1080p.png"))
            {
                mainMenuTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_playbutton_1080p.png"))
            {
                playButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_chooselevelbutton_1080p.png"))
            {
                chooseLevelButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_helpbutton_1080p.png"))
            {
                helpButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#if !__IOS__ && !__ANDROID__
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_arrowoutline_1080p.png"))
            {
                arrowOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "mainmenu_buttonoutline_1080p.png"))
            {
                buttonOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif
        }

        public void LoadChooseLevelMenuAssets(GraphicsDevice graphicsDevice, int levelNumberLimit) {
            string menuFilePath = filePath + "Menu/choose/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_playbutton_1080p.png"))
            {
                chooseButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_leftarrow_1080p.png"))
            {
                chooseLevelMenuLeftArrowTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_rightarrow_1080p.png"))
            {
                chooseLevelMenuRightArrowTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_backarrow_1080p.png"))
            {
                chooseLevelMenuBackArrowTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "levelpreview_outline_1080p.png"))
            {
                chooseLevelPreviewOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "levellockedpreview_1080p.png"))
            {
                chooseLevelLockedPreviewTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

#if !__IOS__ && !__ANDROID__
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_arrowoutline_1080p.png"))
            {
                arrowOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_buttonoutline_1080p.png"))
            {
                buttonOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif

            chooseLevelPreviewTextures = new List<Texture2D>();
            for(int i = 1; i <= levelNumberLimit; i++) {
                string fileName = "level" + i + "preview_1080p.png";

                using (var stream = TitleContainer.OpenStream(menuFilePath + fileName))
                {
                    Texture2D previewTexture = Texture2D.FromStream(graphicsDevice, stream);
                    previewTexture.Name = i.ToString();

                    chooseLevelPreviewTextures.Add(previewTexture);
                }
            }
        }

        public void LoadHelpMenuAssets(GraphicsDevice graphicsDevice)
        {
            string menuFilePath = filePath + "Menu/help/";

            using (var stream = TitleContainer.OpenStream(menuFilePath + "helpmenu_leftarrow_1080p.png"))
            {
                helpMenuBackButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(menuFilePath + "helpmenu_background_1080p.png"))
            {
                helpMenuBackgroundTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

#if !__IOS__ && !__ANDROID__
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_arrowoutline_1080p.png"))
            {
                arrowOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(menuFilePath + "choosemenu_buttonoutline_1080p.png"))
            {
                buttonOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
#endif
        }

        public void LoadPlayerAssets(GraphicsDevice graphicsDevice, int levelNumber) {
            String playerFilePath = filePath + "Player/level" + levelNumber + "_";

            //player textures
            using (var stream = TitleContainer.OpenStream(playerFilePath + "character_1080p.png"))
            {
                playerTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        public void LoadPlayerAccessoryAssets(GraphicsDevice graphicsDevice, List<Accessory> accessories, int swordLevelLimit, int currentSwordLevel) {
            accessoryTextures = new Dictionary<string, Texture2D>();
            String accessoryFilePath = filePath + "Player/";
            String appendToEnd = "_1080p.png";

            foreach(Accessory accessory in accessories) {
                if(accessory.name.Equals("sword_" + currentSwordLevel)) {
                    loadSwordAccessoryAssets(graphicsDevice, accessory.name, accessoryFilePath, appendToEnd, swordLevelLimit);                   
                } else {
                    loadPlayerAccessoryAsset(graphicsDevice, accessory.name, accessoryFilePath, appendToEnd);
                }
            }
        }

        /**
         * Used to actually load the asset from the content folder based on accessory name
         */
        void loadPlayerAccessoryAsset(GraphicsDevice graphicsDevice, string accessoryName, string accessoryFilePath, string appendToEnd) {
            String fullAccessoryFilePath = accessoryFilePath + accessoryName + appendToEnd;

            Texture2D accessoryTexture;
            using (var stream = TitleContainer.OpenStream(fullAccessoryFilePath))
            {
                accessoryTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            accessoryTextures.Add(accessoryName, accessoryTexture);
        }

        /*
         * Although there won't be an accessory object for each sword texture loaded, the textures will be loaded into memory so 
         * that they can be used later on when the player upgrades his sword
         */
        void loadSwordAccessoryAssets(GraphicsDevice graphicsDevice, string accessoryName, string accessoryFilePath, string appendToEnd, int swordLevelLimit) {
            for (int i = 0; i <= swordLevelLimit; i++) {
                loadPlayerAccessoryAsset(graphicsDevice, "sword_" + i, accessoryFilePath, appendToEnd);
            } 
        }

        public void LoadGameAssets(GraphicsDevice graphicsDevice) {
            String playerFilePath = filePath + "Player/";
            String gameFilePath = filePath + "Game/";

			//game textures
			using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_outline_1080p.png")) {
                progressBarOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
            using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_outline_half_1080p.png")) {
                progressBarHalfOutlineTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
			using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_fill_health_1080p.png")) {
				progressBarFillHealthTexture = Texture2D.FromStream(graphicsDevice, stream);
			}
            using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_fill_shield_1080p.png"))
            {
                progressBarFillShieldTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "progressbar_fill_level_1080p.png"))
            {
                progressBarFillLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_gold_1080p.png")) {
                goldCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_silver_1080p.png")) {
                silverCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "coin_bronze_1080p.png"))
            {
                bronzeCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "heart_1080p.png"))
            {
                heartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(gameFilePath + "heart_small_1080p.png"))
            {
                heartSmallTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            string transparentBackgroundTexturePath = "transparent_background_black_1080p.png";
#if !__IOS__ && !__ANDROID__
            transparentBackgroundTexturePath = "transparent_background_black_xbox_1080p.png";
#endif
            using (var stream = TitleContainer.OpenStream(gameFilePath + transparentBackgroundTexturePath)) {
                transparentBlackBackgroundTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(gameFilePath + "quit_button_1080p.png"))
            {
                quitButtonTexture = Texture2D.FromStream(graphicsDevice, stream);
            }


            if (loadOnScreenController) {
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

			loadSoundEffects();
        }

        public void LoadLevelAssets(GraphicsDevice graphicsDevice, int levelNumber)
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
            using (var stream = TitleContainer.OpenStream(projectileFilePath + "level" + levelNumber + "_bile_1080p.png"))
            {
                bileTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            if(!levelMusicLoaded) {
				loadLevelMusicAssets(graphicsDevice, levelNumber);
            }
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

            loadLevelMusicAssets(graphicsDevice, levelNumber);
        }

        public void LoadStoreLevelAssets(GraphicsDevice graphicsDevice) {
            setupStoreLevel(); //sets file path for background based on OS
            string storeLevelFilePath = filePath + "StoreLevel/";

            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + storeLevelString))
            {
                storeLevelTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_level_character_1080p.png")) {
                storeLevelCharacterTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "heart_1080p.png"))
            {
                storeLevelHeartTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "shield_1080p.png"))
            {
                storeLevelShieldTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "big_box_1080p.png"))
            {
                storeLevelBigBoxTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "small_box_1080p.png"))
            {
                storeLevelSmallBoxTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(storeLevelFilePath + "store_sign_1080p.png")) {
                storeLevelSignTexture = Texture2D.FromStream(graphicsDevice, stream);
            }

            //it was either use game content folder or copy assets from the game folder into the store folder
            //i went with this because it would be easier to keep track of assets when changes are made to them
            using (var stream = TitleContainer.OpenStream(filePath + "Game/" + "coin_gold_1080p.png"))
            {
                storeLevelCoinTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
            using (var stream = TitleContainer.OpenStream(filePath + "Player/" + "sword_0_1080p.png"))
            {
                storeLevelSwordTexture = Texture2D.FromStream(graphicsDevice, stream);
            }
        }

        /**
         * TODO: for somer eason GetValueOrDefault isn't working on Windows
         * I'm not sure it was correct anyway. This should return null if the texture doesn't exist and skip it in the calling method
         * **/
        public Texture2D GetAccessoryTexture(string accessoryName) {
#if __IOS__ || __ANDROID__
                return accessoryTextures.GetValueOrDefault(accessoryName);
#else
                if(accessoryTextures.ContainsKey(accessoryName))
                {
                    return accessoryTextures[accessoryName];
                } else
                {
                    return null;
                }
#endif

        }

        public void DisposePreLevelAssets() {
            preLevelCharacterTexture.Dispose();
            preLevelTexture.Dispose();
        }

        public void DisposeMainMenuAssets(bool shouldDisposeMusic) {
            //splashTexture.Dispose(); TODO: need to dispose this on game exit

            mainMenuTexture.Dispose();
            playButtonTexture.Dispose();
            chooseLevelButtonTexture.Dispose();
            helpButtonTexture.Dispose();

            if(shouldDisposeMusic) {
				DisposeMusic();
            }

#if !__IOS__ && !__ANDROID__
            arrowOutlineTexture.Dispose();
            buttonOutlineTexture.Dispose();
#endif
        }

        public void DisposeChooseLevelMenuAssets() {
            chooseButtonTexture.Dispose();
            chooseLevelMenuBackArrowTexture.Dispose();
            chooseLevelMenuRightArrowTexture.Dispose();
            chooseLevelMenuLeftArrowTexture.Dispose();
            chooseLevelLockedPreviewTexture.Dispose();

            foreach (Texture2D previewTexture in chooseLevelPreviewTextures) {
                previewTexture.Dispose();
            }

#if !__IOS__ && !__ANDROID__
            arrowOutlineTexture.Dispose();
            buttonOutlineTexture.Dispose();
#endif
        }

        public void DisposeHelpMenuAssets() {
            helpMenuBackButtonTexture.Dispose();
            helpMenuBackgroundTexture.Dispose();

#if !__IOS__ && !__ANDROID__
            arrowOutlineTexture.Dispose();
            buttonOutlineTexture.Dispose();
#endif
        }

        public void DisposeStoreAssets() {
            storeLevelTexture.Dispose();
            storeLevelCharacterTexture.Dispose();
            storeLevelSwordTexture.Dispose();
            storeLevelHeartTexture.Dispose();
            storeLevelShieldTexture.Dispose();
            storeLevelCoinTexture.Dispose();
            storeLevelBigBoxTexture.Dispose();
            storeLevelSmallBoxTexture.Dispose();
            storeLevelSignTexture.Dispose();
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

            DisposeMusic();

            playerTexture.Dispose();
            foreach(Texture2D accessoryTexture in accessoryTextures.Values) {
                accessoryTexture.Dispose();
            }
		}

        //TODO: this needs to be called somewhere when exiting the game
        public void DisposeGameAssets() {
#if __IOS__ || __ANDROID__
            controllerTexture.Dispose();
            leftArrowButtonTexture.Dispose();
            rightArrowButtonTexture.Dispose();
            jumpButtonTexture.Dispose();
            pauseButtonTexture.Dispose();
#endif
            progressBarOutlineTexture.Dispose();
            progressBarHalfOutlineTexture.Dispose();
            progressBarFillHealthTexture.Dispose();
            progressBarFillShieldTexture.Dispose();
			progressBarFillLevelTexture.Dispose();
            transparentBlackBackgroundTexture.Dispose();
            quitButtonTexture.Dispose();

            bronzeCoinTexture.Dispose();
            silverCoinTexture.Dispose();
            goldCoinTexture.Dispose();
            heartTexture.Dispose();
            heartSmallTexture.Dispose();

            DisposeSoundEffects();
        }

        public void DisposeMusic() {
            //stop music from playing just in case its still playing
            MusicManager.Instance.StopMusic();

            levelMusicLoaded = false;
            currentSong.Dispose();
            musicContentManager.Dispose();
        }

        public void DisposeSoundEffects() {
            gameOverSoundEffect.Dispose();
            bigCoinPickupSoundEffect.Dispose();
            bigHeartPickupSoundEffect.Dispose();
            hurtSoundEffect.Dispose();
            jumpSoundEffect.Dispose();
            littleCoinPickupSoundEffect.Dispose();
            monsterHurtSoundEffect.Dispose();
            smallHeartPickupSoundEffect.Dispose();
            selectSoundEffect.Dispose();
            explosionSoundEffect.Dispose();
            victorySoundEffect.Dispose();
            purchaseSoundEffect.Dispose();
            purchaseDeniedSoundEffect.Dispose();

            soundContentManager.Dispose();
        }

        //TODO: THIS NEEDS TO BE CALLED SOMEWHERE !!!!
        public void DisposeOnExit() {
            fontContentManager.Dispose();
            blackBackgroundTexture.Dispose();
        }

        string getPreLevelString(int levelNumber) {
            string preLevelString = "pre_level" + levelNumber + "background_";

#if __IOS__ || __ANROID__
            preLevelString += "full_1080p.png";
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

        void setupStoreLevel()
        {
#if __IOS__ || __ANROID__
            storeLevelString = "store_level_1080p.png";
#else
            storeLevelString = "store_level_xbox_1080p.png";
#endif
        }

        void loadLevelMusicAssets(GraphicsDevice graphicsDevice, int levelNumber)
        {
            loadMusic("Level/level" + levelNumber + "_music");
            levelMusicLoaded = true;
        }

        void loadMusic(String songPath)
        {
            //prepare musicContentManager to be used again
            musicContentManager = new ContentManager(TheAdventuresOf.contentManager.ServiceProvider, TheAdventuresOf.contentManager.RootDirectory);

            currentSong = musicContentManager.Load<Song>(songPath);
        }

        void loadSoundEffects()
        {
			//prepare musicContentManager to be used again
			soundContentManager = new ContentManager(TheAdventuresOf.contentManager.ServiceProvider, TheAdventuresOf.contentManager.RootDirectory);
            String soundFilePath = "Sound/";

            hurtSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "hurt");
            //hurtSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_hurt");
            jumpSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "jump");
            //jumpSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_jump");
            monsterHurtSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "monster_hurt");
            //monsterHurtSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_monster_hurt");

            gameOverSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "level_gameover_sound");
            bigCoinPickupSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "big_coin_pickup");
            bigHeartPickupSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "big_heart_pickup");
            littleCoinPickupSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "little_coin_pickup");
            smallHeartPickupSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "small_heart_pickup");
            selectSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "select");
            explosionSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_explosion");
            victorySoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_victory_sound");
            purchaseSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_purchase");
            purchaseDeniedSoundEffect = soundContentManager.Load<SoundEffect>(soundFilePath + "tanner_purchase_denied");

            SoundManager.Instance.InitializeDictionary();
        }
    }
}

