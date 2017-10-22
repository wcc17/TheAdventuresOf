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

        int levelNumber = 1;
        int nextGameState = -1;
        int gameState = SPLASH_STATE;
        GraphicsDevice graphicsDevice;
        ContentManager contentManager;
        ScreenManager screenManager;
        MusicManager musicManager;
        SpriteBatch spriteBatch;
        BaseLevel currentLevel = null;
        MainMenu mainMenu;
        ChooseLevelMenu chooseLevelMenu;

        Controller currentController;

        public float splashTimeLimit;
        public float pausedTextVectorXOffset;
        Timer splashTimer;

        //score related position stuff
        public float totalScoreTextX;
        public float totalScoreTextY;
        static Vector2 totalScorePositionVector;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;
            this.musicManager = new MusicManager(gameState);
        }

        //to be called after loading XML information
        public void Initialize() {
            basePositionVector = new Vector2(0, 0);
            pausedTextVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH / 2 - pausedTextVectorXOffset, ScreenManager.FULL_SCREEN_HEIGHT / 2);
            totalScorePositionVector = new Vector2(totalScoreTextX, totalScoreTextY);
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            screenManager = new ScreenManager(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            loadSplashScreen();
        }

        void loadSplashScreen() {
            Logger.WriteToConsole("Load splash screen");
            AssetManager.Instance.LoadSplashAssets(graphicsDevice, contentManager);

            gameState = SPLASH_STATE;
            musicManager.ChangeState(gameState);

            splashTimer = new Timer(splashTimeLimit);
        }

        void loadMainMenu() {
            Logger.WriteToConsole("Load Main Menu");
            mainMenu = new MainMenu();
            mainMenu.LoadMenu(graphicsDevice);

            gameState = MENU_STATE;

            currentController = new MainMenuController();
            XmlManager.LoadMainMenuInformation();
            ((MainMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.playButtonTexture,
                                    AssetManager.Instance.chooseLevelButtonTexture);
            currentController.InitializeController();
        }

        void loadChooseLevelMenu() {
            Logger.WriteToConsole("Load Choose Level Menu");
            chooseLevelMenu = new ChooseLevelMenu();

            gameState = CHOOSE_LEVEL_STATE;

            currentController = new ChooseLevelMenuController();
            XmlManager.LoadChooseLevelMenuInformation();
            ((ChooseLevelMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.chooseButtonTexture);
            currentController.InitializeController();
        }

        void loadCommonLevelAssets() {
            AssetManager.Instance.LoadGameAssets(graphicsDevice);
            XmlManager.LoadGameInformation();
            CoinManager.Instance.Initialize();
            HealthManager.Instance.Initialize();

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
                                        AssetManager.Instance.controllerTexture);

            }
            currentController.InitializeController();
        }

        void loadPreLevelAssets() {
            Logger.WriteToConsole("Load PreLevel Assets");

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, levelNumber);
            AssetManager.Instance.LoadPreLevelAssets(graphicsDevice, levelNumber);

            loadPlayerAccessories();

            currentLevel = new PreLevel(AssetManager.Instance.preLevelTexture);
            XmlManager.LoadPreLevelInformation((PreLevel)currentLevel);
        }

        void loadStoreLevelAssets() {
            Logger.WriteToConsole("Load StoreLevel Assets");

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, levelNumber);
            AssetManager.Instance.LoadStoreLevelAssets(graphicsDevice);

            loadPlayerAccessories();

            currentLevel = new StoreLevel(AssetManager.Instance.storeLevelTexture);
            XmlManager.LoadStoreLevelInformation((StoreLevel)currentLevel);
        }

        //only load level assets. will eventually have switch for level number
        void loadLevelAssets() {
            Logger.WriteToConsole("Load Level assets");

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, levelNumber);
            AssetManager.Instance.LoadLevelAssets(graphicsDevice, contentManager, levelNumber);

            loadPlayerAccessories();

            currentLevel = new Level(AssetManager.Instance.levelTexture);

            XmlManager.LoadLevelInformation((Level)currentLevel, levelNumber);
            CoinManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + CoinManager.coinYOffset);
        }

        void loadPlayerAccessories() {
            List<Accessory> playerAccessories = XmlManager.LoadPlayerAccessories(levelNumber);
            AssetManager.Instance.LoadPlayerAccessoryAssets(graphicsDevice, playerAccessories);

            foreach(Accessory accessory in playerAccessories) {
                accessory.InitializeTexture(AssetManager.Instance.GetAccessoryTexture(accessory.name));
            }

            PlayerManager.Instance.SetPlayerAccessories(playerAccessories);
        }

        void loadPreLevel()
        {
            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);

            gameState = PRE_LEVEL_STATE;
        }

        void loadLevel()
        {
            currentLevel.InitializeLevel(USE_PLAYER_SPAWN_ANIMATION);

            gameState = LEVEL_STATE;
        }

        void loadStoreLevel() {
            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);

            gameState = STORE_LEVEL_STATE;
        }

        public void Update(GameTime gameTime, bool isGameActive)
        {
            musicManager.Update(gameTime);

            if(gameState != SPLASH_STATE && gameState != LOAD_STATE) {
                screenManager.Update(currentController);
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
                gameState = LOAD_STATE;
                //nextGameState = PRE_LEVEL_STATE;
                levelNumber = 2;
                nextGameState = LEVEL_STATE;

                AssetManager.Instance.DisposeMainMenuAssets();

                //load level assets for nextGameState
                loadCommonLevelAssets();
                loadLevelAssets();
                //loadPreLevelAssets();
            } else if(mainMenu.proceedToChooseLevelState) {
                //TODO: should I load screen first?
                gameState = LOAD_STATE;
                nextGameState = CHOOSE_LEVEL_STATE;

                //TODO: NEED TO DISPOSE THESE AT SOME POINT
                AssetManager.Instance.LoadChooseLevelMenuAssets(graphicsDevice);
            }
        }

        void updateChooseLevelMenu(GameTime gameTime) {
            chooseLevelMenu.Update(gameTime, (ChooseLevelMenuController) currentController);
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
            }
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
                nextGameState = STORE_LEVEL_STATE;

                AssetManager.Instance.DisposeLevelAssets();
                loadStoreLevelAssets();
            }
        }

        void updateStoreLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController)currentController);

            if(currentLevel.nextLevel) {
                gameState = LOAD_STATE;
                nextGameState = PRE_LEVEL_STATE;
                levelNumber++;

                AssetManager.Instance.DisposeStoreAssets();
                loadPreLevelAssets();
            }
        }

        void updateLoadState(GameTime gameTime) {
            //if musicManager is still on the current state, change its state to prepare for the next
            if (musicManager.gameState != nextGameState)
            {
                musicManager.ChangeState(nextGameState);
            }

            //if musicManager is no longer changing a song, load the main menu
            if (!musicManager.changingSongs)
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

        public void Draw(GameTime gameTime) {
            spriteBatch.Begin(transformMatrix: screenManager.scaleMatrix);

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

            //Draw controller and buttons
            currentController.Draw(spriteBatch);

            //Draw text related stuff
            TextManager.Instance.Draw(spriteBatch);

            //Draw total score
            spriteBatch.DrawString(AssetManager.Instance.font, 
                                   "Score: " + ScoringManager.Instance.score.ToString(), 
                                   totalScorePositionVector, Color.White);

            if (((GameController)currentController).isPaused)
            {
                spriteBatch.Draw(AssetManager.Instance.pauseBackgroundTexture, basePositionVector);
                spriteBatch.DrawString(AssetManager.Instance.font, "Paused.", pausedTextVector, Color.White);
            }
        }

        void drawLoadScreen()
        {
            //TODO: should have a new screen for load screen rather than splash screen
            drawSplash();
        }
    }
}
