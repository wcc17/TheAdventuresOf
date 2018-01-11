using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameManager
    {
        //TODO: THIS SHOULD BE SET SOMEWHERE ELSE, NOT HARDCODED and probably shouldn't be static 
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
        MusicManager musicManager;
        SpriteBatch spriteBatch;
        BaseLevel currentLevel = null;
        MainMenu mainMenu;
        ChooseLevelMenu chooseLevelMenu;

        bool chooseLevelMenuAssetsLoaded;
        bool mainMenuAssetsLoaded;

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

            TheAdventuresOf.showMouse = false;
            AssetManager.Instance.LoadSplashAssets(graphicsDevice, contentManager);

            gameState = SPLASH_STATE;
            musicManager.ChangeState(gameState, currentLevelNumber);

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
                                    AssetManager.Instance.chooseLevelMenuBackArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuRightArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuLeftArrowTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture);
            currentController.InitializeController();
        }

        void loadCommonLevelAssets() {
            AssetManager.Instance.LoadGameAssets(graphicsDevice);
            XmlManager.LoadGameInformation();
            CoinManager.Instance.Initialize();
            HeartManager.Instance.Initialize();
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
            AssetManager.Instance.LoadPreLevelAssets(graphicsDevice, currentLevelNumber);

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

            currentLevel = new Level(AssetManager.Instance.levelTexture);

            XmlManager.LoadLevelInformation((Level)currentLevel, currentLevelNumber);
            CoinManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + CoinManager.coinYOffset);
            HeartManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + HeartManager.heartYOffset);
        }

        void loadPlayerAccessories() {
            List<Accessory> playerAccessories = XmlManager.LoadPlayerAccessories(currentLevelNumber);
            AssetManager.Instance.LoadPlayerAccessoryAssets(graphicsDevice, playerAccessories);

            foreach(Accessory accessory in playerAccessories) {
                Texture2D texture = AssetManager.Instance.GetAccessoryTexture(accessory.name);

                if (texture != null)
                {
                    accessory.InitializeTexture(texture);
                } 
            }

            //remove all accessories who don't have a texture before passing to player
            playerAccessories.RemoveAll(accessory => accessory.accessoryTexture == null);
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
                //TODO: after implenting save games, this will need to change
                //right now we're just starting a new game everytime we press play on the menu
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
                currentLevelNumber = chooseLevelMenu.currentLevelSelected;
                prepareLevelState(LEVEL_STATE);
            } else if(chooseLevelMenu.proceedToMainMenuState) {
                gameState = LOAD_STATE;
                nextGameState = MENU_STATE;

                loadMainMenu();
            }
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
                currentLevelNumber++;

                AssetManager.Instance.DisposeStoreAssets();
                loadPreLevelAssets();
            }
        }

        void updateLoadState(GameTime gameTime) {
            //if musicManager is still on the current state, change its state to prepare for the next
            if (musicManager.gameState != nextGameState)
            {
                musicManager.ChangeState(nextGameState, currentLevelNumber);
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

        /**
         * Called when player hits "Quit" in the pause menu during any type of level
         */
        void handleQuitToMenu() {
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

            //Draw controller and buttons
            currentController.Draw(spriteBatch);

            //Draw text related stuff
            TextManager.Instance.Draw(spriteBatch);

            //Draw total score
            spriteBatch.DrawString(AssetManager.Instance.font, 
                                   "Score: " + ScoringManager.Instance.score.ToString(), 
                                   totalScorePositionVector + new Vector2(-1, -1),
                                   Color.Black);
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   "Score: " + ScoringManager.Instance.score.ToString(),
                                   totalScorePositionVector + new Vector2(1, -1),
                                   Color.White);

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
