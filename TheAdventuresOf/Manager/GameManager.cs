﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameManager
    {
        public static int levelNumberMin = 1;
        public static int levelNumberLimit = 5;

        public const bool USE_PLAYER_SPAWN_ANIMATION = true;
        public const bool NO_PLAYER_SPAWN_ANIMATION = false;
        public const int SPLASH_STATE = 0;
        public const int MENU_STATE = 1;
        public const int PRE_LEVEL_STATE = 2;
        public const int LEVEL_STATE = 3;
        public const int LOAD_STATE = 4;
        public const int STORE_LEVEL_STATE = 5;
        public const int CHOOSE_LEVEL_STATE = 6;

        Vector2 basePositionVector;
        Vector2 pausedTextVector;

        int currentLevelNumber = 1;
        int nextGameState = -1;
        int gameState = SPLASH_STATE;
        GraphicsDevice graphicsDevice;
        ContentManager contentManager;
        ScreenManager screenManager;
        SpriteBatch spriteBatch;
        BaseLevel currentLevel = null;
        MainMenu mainMenu;
        ChooseLevelMenu chooseLevelMenu;

        bool chooseLevelMenuAssetsLoaded;
        bool mainMenuAssetsLoaded;
        bool storyMode = true;
        bool endlessMode = false;

        Controller currentController;

        public float splashTimeLimit;
        public float pausedTextVectorXOffset;
        Timer splashTimer;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;
            MusicManager.Instance.InitializeMusicManager(gameState);
        }

        //to be called after loading XML information
        public void Initialize() {
            basePositionVector = new Vector2(0, 0);
            pausedTextVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH / 2 - pausedTextVectorXOffset, ScreenManager.FULL_SCREEN_HEIGHT / 2);
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            screenManager = new ScreenManager(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            loadSplashScreen();
        }

        public void UpgradePlayerSword() {
            PlayerManager.Instance.UpgradePlayerSword();
        }

        void loadSplashScreen() {
            Logger.WriteToConsole("Load splash screen");

            TheAdventuresOf.showMouse = false;
            AssetManager.Instance.LoadSplashAssets(graphicsDevice, contentManager);

            gameState = SPLASH_STATE;
            MusicManager.Instance.ChangeState(gameState, currentLevelNumber);

            splashTimer = new Timer(splashTimeLimit);
        }

        void loadMainMenu() {
            Logger.WriteToConsole("Load Main Menu");

            TheAdventuresOf.showMouse = true;

            if(!mainMenuAssetsLoaded) {
                AssetManager.Instance.LoadMainMenuAssets(graphicsDevice);
            }

            mainMenu = new MainMenu();
            mainMenu.LoadMenu();

            gameState = MENU_STATE;

            currentController = new MainMenuController();
            XmlManager.LoadMainMenuInformation();
            ((MainMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.playButtonTexture,
                                    AssetManager.Instance.chooseLevelButtonTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture);
            currentController.InitializeController();
        }

        void loadChooseLevelMenu() {
            Logger.WriteToConsole("Load Choose Level Menu");

            TheAdventuresOf.showMouse = true;

            if(!chooseLevelMenuAssetsLoaded) {
                AssetManager.Instance.LoadChooseLevelMenuAssets(graphicsDevice, levelNumberLimit);
            }

            chooseLevelMenu = new ChooseLevelMenu();
            chooseLevelMenu.LoadMenu();

            gameState = CHOOSE_LEVEL_STATE;

            currentController = new ChooseLevelMenuController();
            XmlManager.LoadChooseLevelMenuInformation();
            ((ChooseLevelMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.chooseButtonTexture,
                                    AssetManager.Instance.chooseEndlessButtonTexture,
                                    AssetManager.Instance.chooseLevelMenuBackArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuRightArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuLeftArrowTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture);
            ((ChooseLevelMenuController)currentController).InitializeChooseLevelMenuController(
                chooseLevelMenu.levelPreviewPositionVector,
                AssetManager.Instance.chooseLevelPreviewTextures[0].Width);
        }

        void loadCommonLevelAssets() {
            AssetManager.Instance.LoadGameAssets(graphicsDevice);
            XmlManager.LoadGameInformation();
            CoinManager.Instance.Initialize();
            HeartManager.Instance.Initialize();
            HealthShieldManager.Instance.Initialize();

            //TODO: UNCOMMENT FOR TESTING
            //HealthShieldManager.Instance.DecreaseHealthByAmount(975);

            #if __IOS__ || __ANDROID__
                currentController = new GameControllerMobile();
            #else
                currentController = new GameControllerWindows();
            #endif

            if(currentController is GameControllerMobile) {
                ((GameControllerMobile)currentController)
                    .InitializeTextures(AssetManager.Instance.leftArrowButtonTexture,
                                        AssetManager.Instance.rightArrowButtonTexture,
                                        AssetManager.Instance.jumpButtonTexture,
                                        AssetManager.Instance.pauseButtonTexture,
                                        AssetManager.Instance.quitButtonTexture,
                                        AssetManager.Instance.controllerTexture);

            } else if(currentController is GameControllerWindows)
            {
                ((GameControllerWindows)currentController).InitializeTextures(AssetManager.Instance.quitButtonTexture);
            }

            currentController.InitializeController();
        }

        void loadPreLevelAssets() {
            Logger.WriteToConsole("Load PreLevel Assets");

            TheAdventuresOf.showMouse = false;

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, currentLevelNumber);
            AssetManager.Instance.LoadPreLevelAssets(graphicsDevice, contentManager, currentLevelNumber);

            loadPlayerAccessories();

            currentLevel = new PreLevel(AssetManager.Instance.preLevelTexture);
            XmlManager.LoadPreLevelInformation((PreLevel)currentLevel);
        }

        void loadStoreLevelAssets() {
            Logger.WriteToConsole("Load StoreLevel Assets");

            TheAdventuresOf.showMouse = false;

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, currentLevelNumber);
            AssetManager.Instance.LoadStoreLevelAssets(graphicsDevice);

            loadPlayerAccessories();

            currentLevel = new StoreLevel(AssetManager.Instance.storeLevelTexture);
            XmlManager.LoadStoreLevelInformation((StoreLevel)currentLevel);
        }

        //only load level assets. will eventually have switch for level number
        void loadLevelAssets() {
            Logger.WriteToConsole("Load Level assets");

            TheAdventuresOf.showMouse = false;

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, currentLevelNumber);
            AssetManager.Instance.LoadLevelAssets(graphicsDevice, contentManager, currentLevelNumber);

            loadPlayerAccessories();

            currentLevel = new Level(AssetManager.Instance.levelTexture, currentLevelNumber, storyMode, endlessMode);

            XmlManager.LoadLevelInformation((Level)currentLevel, currentLevelNumber);
            CoinManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + CoinManager.coinYOffset);
            HeartManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + HeartManager.heartYOffset);
        }

        void loadPlayerAccessories() {
            List<Accessory> playerAccessories = XmlManager.LoadPlayerAccessories(currentLevelNumber);
            PlayerManager.Instance.LoadPlayerAccessoryAssets(graphicsDevice, playerAccessories);
        }

        void loadPreLevel()
        {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode);

            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);

            gameState = PRE_LEVEL_STATE;
        }

        void loadLevel()
        {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode);

            currentLevel.InitializeLevel(USE_PLAYER_SPAWN_ANIMATION);

            gameState = LEVEL_STATE;
        }

        void loadStoreLevel() {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode);

            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);

            gameState = STORE_LEVEL_STATE;
        }

        public void Update(GameTime gameTime, bool isGameActive)
        {
            MusicManager.Instance.Update(gameTime);

            if(gameState != SPLASH_STATE && gameState != LOAD_STATE) {
                screenManager.Update(currentController);

                if(gameState == LEVEL_STATE && currentLevel.isDelayingMovement) {
                    currentController.ResetButtonPressedValues();
                }
            } else {
                if(currentController != null) {
                    currentController.ResetButtonPressedValues();
                }
            }

            switch(gameState) {
                case SPLASH_STATE:
                    updateSplash(gameTime);
                    break;
                case MENU_STATE:
                    updateMainMenu(gameTime);
                    break;
                case CHOOSE_LEVEL_STATE:
                    updateChooseLevelMenu(gameTime);
                    break;
                case LOAD_STATE:
                    updateLoadState(gameTime);
                    break;
                case PRE_LEVEL_STATE:
                case STORE_LEVEL_STATE:
                case LEVEL_STATE:
                    updateLevel(gameTime, isGameActive);
                    break;
            }

            //Calculate and draw fps to screen
            FrameRate.Update(gameTime);
        }

        void updateSplash(GameTime gameTime) {

            bool timeUp = splashTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) {
                splashTimer.Reset();

                //no need to get load screen involved
                loadMainMenu();

                //TODO: need to throw away splash texture and information after this
            }
        }

        void updateMainMenu(GameTime gameTime) {
            mainMenu.Update(gameTime, (MainMenuController) currentController);

            if(mainMenu.proceedToGameState) {
                storyMode = true;
                currentLevelNumber = levelNumberMin;
                prepareLevelState(PRE_LEVEL_STATE);
            } else if(mainMenu.proceedToChooseLevelState) {
                gameState = LOAD_STATE;
                nextGameState = CHOOSE_LEVEL_STATE;

                loadChooseLevelMenu();
            }
        }

        void updateChooseLevelMenu(GameTime gameTime) {
            chooseLevelMenu.Update(gameTime, (ChooseLevelMenuController) currentController);

            if(chooseLevelMenu.proceedToLevelState) {
                storyMode = false; //set storyMode to false when choosing level in ChooseLevelMenu screen.
                endlessMode = false;
				currentLevelNumber = chooseLevelMenu.currentLevelSelected;

                //have to force the music to start since it normally starts in the pre level
				AssetManager.Instance.LoadLevelMusicAssets(graphicsDevice, contentManager, currentLevelNumber); //need to force load music 
                MusicManager.Instance.StartLevelMusic();

                prepareLevelState(LEVEL_STATE);
            } else if(chooseLevelMenu.proceedToEndlessLevelState) {
                storyMode = false;
                endlessMode = true;
                currentLevelNumber = chooseLevelMenu.currentLevelSelected;

                //have to force the music to start since it normally starts in the pre level
                AssetManager.Instance.LoadLevelMusicAssets(graphicsDevice, contentManager, currentLevelNumber); //need to force load music 
                MusicManager.Instance.StartLevelMusic();

                prepareLevelState(LEVEL_STATE);
            } else if(chooseLevelMenu.proceedToMainMenuState) {
                gameState = LOAD_STATE;
                nextGameState = MENU_STATE;

                loadMainMenu();
            }

			CoinManager.isEndlessMode = endlessMode;
        }

        //called only after leaving main menu or chooselevel menu since they share so much code
        void prepareLevelState(int nextState) {
            gameState = LOAD_STATE;
            //nextGameState = STORE_LEVEL_STATE; //TODO: uncomment this and comment next one to go straight to store
            nextGameState = nextState; 

            if (chooseLevelMenuAssetsLoaded) {
                AssetManager.Instance.DisposeChooseLevelMenuAssets();
                chooseLevelMenuAssetsLoaded = false;
            }
            if (mainMenuAssetsLoaded) {
                AssetManager.Instance.DisposeMainMenuAssets();
                mainMenuAssetsLoaded = false;
            }

            //load level assets for nextGameState
            loadCommonLevelAssets();

            if(nextGameState == PRE_LEVEL_STATE) {
                loadPreLevelAssets();
            } else if(nextGameState == LEVEL_STATE) {
                loadLevelAssets();
            } else if(nextGameState == STORE_LEVEL_STATE) {
                loadStoreLevelAssets(); //added for debugging even though this shouldn't happen
            }
        }

        void updateLevel(GameTime gameTime, bool isGameActive) {
            GameController gameController = (GameController)currentController;

            //TODO: this currently isn't doing anything when game is no longer active. 
            if(!isGameActive) {
                gameController.isPaused = true;
            }

            if (gameController.pauseButtonPressed) {
                gameController.isPaused = !gameController.isPaused;
            }

            if(!gameController.isPaused) {
                TheAdventuresOf.showMouse = false;
                updateLevelCoins(gameTime);

                switch(gameState) {
                    case PRE_LEVEL_STATE:
                        updatePreLevel(gameTime);
                        break;
                    case LEVEL_STATE:
                        updateGameLevel(gameTime);
                        break;
                    case STORE_LEVEL_STATE:
                        updateStoreLevel(gameTime);
                        break;
                }
            } else {
                TheAdventuresOf.showMouse = true;

                if(gameController.quitButtonPressed) {
                    handleQuitToMenu();
                }
            }
        }

        void updateLevelCoins(GameTime gameTime) {
            CoinManager.Instance.Update(gameTime);
            CoinManager.Instance.CheckCollisionWithLevel(currentLevel.leftSideBounds, currentLevel.rightSideBounds);
            CoinManager.Instance.CheckItemsCollisionWithPlayer(PlayerManager.Instance.GetPlayerBounds());
        }

        void updatePreLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController)currentController);

            if (currentLevel.nextLevel) {
                gameState = LOAD_STATE;
                nextGameState = LEVEL_STATE;

                AssetManager.Instance.DisposePreLevelAssets();
                loadLevelAssets();
            }                

        }

        void updateGameLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController) currentController);

            TextManager.Instance.Update(gameTime);

            if (currentLevel.nextLevel) {
                gameState = LOAD_STATE;
                AssetManager.Instance.DisposeLevelAssets();

                //if player is dead at this point, go to main menu
                if (storyMode)
                {
                    if (((Level)currentLevel).playerDied)
                    {
                        handleQuitToMenu();
                    } else {
                        nextGameState = STORE_LEVEL_STATE;
                        loadStoreLevelAssets();
                    }
                }
                else
                {
                    nextGameState = CHOOSE_LEVEL_STATE;
                    loadChooseLevelMenu();
                }   
            }
        }

        void updateStoreLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController)currentController);

            if(currentLevel.nextLevel) {
                gameState = LOAD_STATE;
                nextGameState = PRE_LEVEL_STATE;
                currentLevelNumber++;

                AssetManager.Instance.DisposeStoreAssets();
                loadPreLevelAssets();
            }
        }

        void updateLoadState(GameTime gameTime) {
            //if musicManager is still on the current state, change its state to prepare for the next
            if (MusicManager.Instance.gameState != nextGameState)
            {
                MusicManager.Instance.ChangeState(nextGameState, currentLevelNumber);
            }

            //if musicManager is no longer changing a song, load the main menu
            if (!MusicManager.Instance.changingSongs)
            {
                switch (nextGameState)
                {
                    case PRE_LEVEL_STATE:
                        loadPreLevel();
                        break;
                    case LEVEL_STATE:
                        loadLevel();
                        break;
                    case STORE_LEVEL_STATE:
                        loadStoreLevel();
                        break;
                    case CHOOSE_LEVEL_STATE:
                        loadChooseLevelMenu();
                        break;
                }
            }
        }

        /**
         * Called when player hits "Quit" in the pause menu during any type of level
         */
        void handleQuitToMenu() {
            SaveGameManager.Instance.SetLevelHighScore(currentLevelNumber, 
                                                       ScoringManager.Instance.score);
            ScoringManager.Instance.ClearScores();
            currentLevel.ResetUponReturnToMenu();

            gameState = LOAD_STATE;
            nextGameState = SPLASH_STATE;

            switch (gameState)
            {
                case PRE_LEVEL_STATE:
                    AssetManager.Instance.DisposePreLevelAssets();
                    break;
                case LEVEL_STATE:
                    AssetManager.Instance.DisposeLevelAssets();
                    break;
                case STORE_LEVEL_STATE:
                    AssetManager.Instance.DisposeStoreAssets();
                    break;
            }
            AssetManager.Instance.DisposeGameAssets();

            //loadMainMenu();
            loadSplashScreen();
        }

        public void Draw(GameTime gameTime) {
            spriteBatch.Begin(transformMatrix: ScreenManager.scaleMatrix);

            switch(gameState) {
                case SPLASH_STATE:
                    drawSplash();
                    break;
                case MENU_STATE:
                    drawMainMenu();
                    break;
                case CHOOSE_LEVEL_STATE:
                    drawChooseLevelMenu();
                    break;
                case PRE_LEVEL_STATE:
                    drawLevel();
                    break;
                case LEVEL_STATE:
                    drawLevel();
                    break;
                case STORE_LEVEL_STATE:
                    drawLevel();
                    break;
                case LOAD_STATE:
                    drawLoadScreen();
                    break;
            }

            Logger.Instance.DrawToScreen(spriteBatch);

            spriteBatch.End();
        }

        void drawSplash()
        {
            spriteBatch.Draw(AssetManager.Instance.splashTexture, basePositionVector);
        }

        void drawMainMenu()
        {
            mainMenu.Draw(spriteBatch);

            //draw play buttons, etc
            currentController.Draw(spriteBatch);
        }

        void drawChooseLevelMenu() {
            chooseLevelMenu.Draw(spriteBatch);
            currentController.Draw(spriteBatch);
        }

        void drawLevel()
        {
            //Draw level related stuff (background and monsters)
            currentLevel.Draw(spriteBatch);

            if (((GameController)currentController).isPaused)
            {
                spriteBatch.Draw(AssetManager.Instance.transparentBlackBackgroundTexture, basePositionVector);
                spriteBatch.DrawString(AssetManager.Instance.font, "Paused.", pausedTextVector, Color.White);
            }

            //Draw controller and buttons
            currentController.Draw(spriteBatch);

            //Draw text related stuff
            TextManager.Instance.Draw(spriteBatch);

            //Draw coins on level
			CoinManager.Instance.Draw(spriteBatch);

            //health, coin counts, scores, etc
            HUDManager.Instance.Draw(spriteBatch);
        }

        void drawLoadScreen()
        {
            //TODO: should have a new screen for load screen rather than splash screen
            drawSplash();
        }
    }
}
