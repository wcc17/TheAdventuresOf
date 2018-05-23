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
        public static int levelNumberMin = 1;
        public static int levelNumberLimit = 5;

        public const bool USE_PLAYER_SPAWN_ANIMATION = true;
        public const bool NO_PLAYER_SPAWN_ANIMATION = false;

		public const int NO_STATE_SPECIFIED = -1;
        public const int SPLASH_STATE = 0;
        public const int MENU_STATE = 1;
        public const int PRE_LEVEL_STATE = 2;
        public const int LEVEL_STATE = 3;
        public const int LOAD_STATE = 4;
        public const int STORE_LEVEL_STATE = 5;
        public const int CHOOSE_LEVEL_STATE = 6;
        public const int HELP_MENU_STATE = 7;
        public const int VICTORY_STATE = 8;

        Vector2 basePositionVector;

        int currentLevelNumber = 1;
        int nextGameState = NO_STATE_SPECIFIED;
        int gameState = SPLASH_STATE;
        GraphicsDevice graphicsDevice;
		RenderTarget2D renderTarget;
        Vector2 renderTargetPositionVector;
        Rectangle renderTargetRect;
        ScreenManager screenManager;
        SpriteBatch spriteBatch;
        BaseLevel currentLevel = null;
        MainMenu mainMenu;
        ChooseLevelMenu chooseLevelMenu;
        HelpMenu helpMenu;

        bool storyMode = true;
        bool endlessMode = false;

        Controller currentController;

        public float splashTimeLimit;
        Timer splashTimer;

        //TODO: load screen manager or at least improve load screen handling
        //ensuring load screen shows for at least x number of seconds
        float loadScreenTimeLimit = 3.0f;
        Timer loadScreenTimer;
        bool stateLoaded = false; //used in UpdateLoadScreen to determine when to load next state after timer is up

        public GameManager(GraphicsDevice graphicsDevice)
        {
            this.graphicsDevice = graphicsDevice;
            MusicManager.Instance.InitializeMusicManager(gameState);

            loadScreenTimer = new Timer(loadScreenTimeLimit);
            handleDebug();
        }

        public void handleDebug() {
            if(TheAdventuresOf.startWithLevel2) {
                levelNumberMin = 2;
                currentLevelNumber = 2;
            } else if(TheAdventuresOf.startWithLevel3) {
                levelNumberMin = 3;
                currentLevelNumber = 3;
            } else if (TheAdventuresOf.startWithLevel4) {
                levelNumberMin = 4;
                currentLevelNumber = 4;
            } else if (TheAdventuresOf.startWithLevel5) {
                levelNumberMin = 5;
                currentLevelNumber = 5;
            } else if (TheAdventuresOf.startWithVictoryLevel) {
            }
        }

        //to be called after loading XML information
        public void Initialize() {
            basePositionVector = new Vector2(0, 0);
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            screenManager = new ScreenManager(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, 
                                              GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            if(screenManager.isAspectRatioWrong) {
                graphicsDevice.Viewport = screenManager.viewport;
                renderTarget = new RenderTarget2D(graphicsDevice,
                                                  (int)screenManager.deviceScreenWidth,
                                                  (int)screenManager.deviceScreenHeight);
                renderTargetPositionVector = new Vector2((screenManager.deviceScreenWidth / 2) - (ScreenManager.VIRTUAL_SCREEN_WIDTH / 2),
                                                         0);
                renderTargetRect = new Rectangle((int)renderTargetPositionVector.X,
                                                 (int)renderTargetPositionVector.Y,
                                                 (int)ScreenManager.VIRTUAL_SCREEN_WIDTH,
                                                 (int)ScreenManager.VIRTUAL_SCREEN_HEIGHT); 
            }

            loadSplashScreen();

            PauseManager.Instance.Initialize();
        }

        void loadSplashScreen() {
            Logger.WriteToConsole("Load splash screen");

            TheAdventuresOf.showMouse = false;
            AssetManager.Instance.LoadSplashAssets(graphicsDevice);

            setState(SPLASH_STATE, NO_STATE_SPECIFIED);
            MusicManager.Instance.ChangeState(gameState, currentLevelNumber);

            splashTimer = new Timer(splashTimeLimit);
        }

        void loadMainMenu() {
            Logger.WriteToConsole("Load Main Menu");
            TheAdventuresOf.showMouse = true;

            AssetManager.Instance.LoadMainMenuAssets(graphicsDevice);
            mainMenu = new MainMenu();
            mainMenu.LoadMenu();

            setState(MENU_STATE, NO_STATE_SPECIFIED);

            currentController = new MainMenuController();
            XmlManager.LoadMainMenuInformation();
            ((MainMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.playButtonTexture,
                                    AssetManager.Instance.chooseLevelButtonTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture,
                                    AssetManager.Instance.helpButtonTexture);
            currentController.InitializeController();
        }

        void loadChooseLevelMenu() {
            Logger.WriteToConsole("Load Choose Level Menu");

            TheAdventuresOf.showMouse = true;

            AssetManager.Instance.LoadChooseLevelMenuAssets(graphicsDevice, levelNumberLimit);
            chooseLevelMenu = new ChooseLevelMenu();
            chooseLevelMenu.LoadMenu();

            currentController = new ChooseLevelMenuController();
            XmlManager.LoadChooseLevelMenuInformation();
            ((ChooseLevelMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.chooseButtonTexture,
                                    AssetManager.Instance.chooseLevelMenuBackArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuRightArrowTexture,
                                    AssetManager.Instance.chooseLevelMenuLeftArrowTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture);
            ((ChooseLevelMenuController)currentController).InitializeChooseLevelMenuController();
        }

        void loadHelpMenu() {
            Logger.WriteToConsole("Load Help Menu");

            TheAdventuresOf.showMouse = true;

            AssetManager.Instance.LoadHelpMenuAssets(graphicsDevice);
            helpMenu = new HelpMenu();
            helpMenu.LoadMenu();

            currentController = new HelpMenuController();
            //XmlManager.LoadHelpMenuInformation();
            ((HelpMenuController)currentController)
                .InitializeTextures(AssetManager.Instance.helpMenuBackButtonTexture,
                                    AssetManager.Instance.arrowOutlineTexture,
                                    AssetManager.Instance.buttonOutlineTexture);
            ((HelpMenuController)currentController).InitializeHelpMenuController();
        }

        void loadCommonLevelAssets() {
            AssetManager.Instance.LoadGameAssets(graphicsDevice);
            XmlManager.LoadGameInformation();
            CoinManager.Instance.Initialize();
            HeartManager.Instance.Initialize();

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

            currentLevel = new PreLevel(AssetManager.Instance.preLevelTexture, (GameController) currentController, currentLevelNumber);
            XmlManager.LoadPreLevelInformation((PreLevel)currentLevel, currentLevelNumber);
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

        void loadLevelAssets() {
            Logger.WriteToConsole("Load Level assets");

            TheAdventuresOf.showMouse = false;

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, currentLevelNumber);
            AssetManager.Instance.LoadLevelAssets(graphicsDevice, currentLevelNumber);

            loadPlayerAccessories();

            currentLevel = new Level(AssetManager.Instance.levelTexture, currentLevelNumber, storyMode, endlessMode);

            XmlManager.LoadLevelInformation((Level)currentLevel, currentLevelNumber, endlessMode);
            CoinManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + CoinManager.coinYOffset);
            HeartManager.Instance.UpdateGroundLevel(((Level)currentLevel).groundLevel + HeartManager.heartYOffset);
        }

        void loadVictoryLevelAssets()
        {
            Logger.WriteToConsole("Load VictoryLevel Assets");

            TheAdventuresOf.showMouse = false;

            AssetManager.Instance.LoadPlayerAssets(graphicsDevice, 1);
            AssetManager.Instance.LoadVictoryLevelAssets(graphicsDevice);

			loadPlayerAccessories();

            currentLevel = new VictoryLevel(AssetManager.Instance.victoryLevelBackgroundTexture, (GameController)currentController);
        }

        void loadPlayerAccessories() {
            //use level 1 accessories (should be sword only) if going to the victory state
            int levelNumberToUse = (nextGameState == VICTORY_STATE) ? 1 : currentLevelNumber;

            List<Accessory> playerAccessories = XmlManager.LoadPlayerAccessories(levelNumberToUse);
            PlayerManager.Instance.LoadPlayerAccessoryAssets(graphicsDevice, playerAccessories);
        }

        void loadPreLevel()
        {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode, false, false);
            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);
        }

        void loadLevel()
        {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode, true, false);
            currentLevel.InitializeLevel(USE_PLAYER_SPAWN_ANIMATION);
        }

        void loadStoreLevel() {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode, false, true);
            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);
        }

        void loadVictoryLevel() {
            HUDManager.Instance.Initialize(1, endlessMode, false, false);
            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);
        }

        public void Update(GameTime gameTime, bool isGameActive)
        {
            TransitionManager.Instance.Update(gameTime);
            CutsceneManager.Instance.Update(gameTime);

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
                case HELP_MENU_STATE:
                    updateHelpMenu(gameTime);
                    break;
                case LOAD_STATE:
                    updateLoadState(gameTime);
                    break;
                case PRE_LEVEL_STATE:
                case STORE_LEVEL_STATE:
                case LEVEL_STATE:
                case VICTORY_STATE:
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
                //main menu is disposed in prepareLevelState

                endlessMode = false;
                CoinManager.isEndlessMode = false;
                storyMode = true;
                currentLevelNumber = levelNumberMin;

                if(TheAdventuresOf.skipPreLevel) {
                    nextGameState = LEVEL_STATE;
                    prepareLevelState(LEVEL_STATE, gameTime);
                } else {
                    prepareLevelState(PRE_LEVEL_STATE, gameTime);
                }

                if(TheAdventuresOf.startWithVictoryLevel) {
                    nextGameState = VICTORY_STATE;
                    prepareLevelState(VICTORY_STATE, gameTime);
                }

				resetPlayerStats();
            } else if(mainMenu.proceedToChooseLevelState) {
                AssetManager.Instance.DisposeMainMenuAssets(false);
                setLoadState(CHOOSE_LEVEL_STATE, gameTime);
                loadChooseLevelMenu();
            } else if(mainMenu.proceedToHelpMenuState) {
                AssetManager.Instance.DisposeMainMenuAssets(false);
                setLoadState(HELP_MENU_STATE, gameTime);
                loadHelpMenu();
            }
        }

        void updateChooseLevelMenu(GameTime gameTime) {
            chooseLevelMenu.Update(gameTime, (ChooseLevelMenuController) currentController);

            if(chooseLevelMenu.proceedToEndlessLevelState) {
                storyMode = false;
                endlessMode = true;
                CoinManager.isEndlessMode = true;
                currentLevelNumber = chooseLevelMenu.currentLevelSelected;

                MusicManager.Instance.StartMusic();

                prepareLevelState(LEVEL_STATE, gameTime);

				resetPlayerStats();
            } else if(chooseLevelMenu.proceedToMainMenuState) {
                AssetManager.Instance.DisposeChooseLevelMenuAssets();
                setLoadState(MENU_STATE, gameTime);
                loadMainMenu();
            }
        }

        void updateHelpMenu(GameTime gameTime) {
            helpMenu.Update(gameTime, (HelpMenuController)currentController);

            if(helpMenu.proceedToMenuState) {
                AssetManager.Instance.DisposeHelpMenuAssets();
                setLoadState(HELP_MENU_STATE, gameTime);
                loadMainMenu();
            }
        }

        //called after leaving main menu or chooselevel menu since they share so much code
        void prepareLevelState(int nextState, GameTime gameTime) {
            if (gameState == CHOOSE_LEVEL_STATE) {
                AssetManager.Instance.DisposeMusic(); //manually dispose menu music 
                AssetManager.Instance.DisposeChooseLevelMenuAssets();
            }
            if (gameState == MENU_STATE) {
                AssetManager.Instance.DisposeMainMenuAssets(true);
            }

            if(TheAdventuresOf.straightToStore && !endlessMode) {
				setLoadState(STORE_LEVEL_STATE, gameTime);
            } else {
				setLoadState(nextState, gameTime);
            }

            //load level assets for nextGameState
            loadCommonLevelAssets();

            if(TheAdventuresOf.straightToStore || TheAdventuresOf.startWithVictoryLevel) {
                if (TheAdventuresOf.straightToStore)
                { //only for debug, don't freak out
                    loadStoreLevelAssets();
                }
                else if (TheAdventuresOf.startWithVictoryLevel)
                { //only for debug, don't freak out
                    loadVictoryLevelAssets();
                }
            } else {
                if (nextGameState == PRE_LEVEL_STATE)
                {
                    loadPreLevelAssets();
                }
                else if (nextGameState == LEVEL_STATE)
                {
                    loadLevelAssets();
                } 
            }
        }

        void updateLevel(GameTime gameTime, bool isGameActive) {
            GameController gameController = (GameController)currentController;

            PauseManager.Instance.Update(gameTime, gameController, isGameActive);

            if(!PauseManager.Instance.IsPaused()) {
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
                    case VICTORY_STATE:
                        updateVictoryLevel(gameTime);
                        break;
                }
            } else {
                if(PauseManager.Instance.HandleQuit(gameTime, gameController)) {
                    handleQuitToMenu(gameTime);
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

            //wait for transition before continuing
            if (currentLevel.nextLevel && !TransitionManager.Instance.IsTransitioning()) {
                handleNextStateAfterPreLevel(gameTime);
            }                
        }

        void updateGameLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController) currentController);
            TextManager.Instance.Update(gameTime);

            //wait for transition before continuing
            if (currentLevel.nextLevel && !TransitionManager.Instance.IsTransitioning()) {
                handleNextStateAfterGameLevel(gameTime);
            }
        }

        void updateStoreLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController)currentController);

            //wait for transition before continuing
            if(currentLevel.nextLevel && !TransitionManager.Instance.IsTransitioning()) {
                handleNextStateAfterStoreLevel(gameTime);
			}
        }

        void updateVictoryLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController)currentController);

            if(currentLevel.nextLevel && !TransitionManager.Instance.IsTransitioning()) {
                handleNextStateAfterVictoryLevel(gameTime);
            }
        }

        void handleNextStateAfterPreLevel(GameTime gameTime) {
            setLoadState(LEVEL_STATE, gameTime);
            AssetManager.Instance.DisposePreLevelAssets();
            loadLevelAssets();
        }

        void handleNextStateAfterGameLevel(GameTime gameTime) {
            setLoadState(NO_STATE_SPECIFIED, gameTime);
            AssetManager.Instance.DisposeLevelAssets();

            if (storyMode) {
                if (((Level)currentLevel).playerDied) {
                    handleQuitToMenu(gameTime);
                } else if ((currentLevelNumber + 1) > levelNumberLimit) {
                    nextGameState = VICTORY_STATE;
                    loadVictoryLevelAssets();
                } else {
                    nextGameState = STORE_LEVEL_STATE;
                    loadStoreLevelAssets();
                }
            } else {
                nextGameState = CHOOSE_LEVEL_STATE;
                loadChooseLevelMenu();
            }
        }

        void handleNextStateAfterStoreLevel(GameTime gameTime) {
			currentLevelNumber++;

			AssetManager.Instance.DisposeStoreAssets();

            if (TheAdventuresOf.skipPreLevel) {
                setLoadState(LEVEL_STATE, gameTime);
                loadLevelAssets();
            } else {
                setLoadState(PRE_LEVEL_STATE, gameTime);
                loadPreLevelAssets();
            }
        }

        void handleNextStateAfterVictoryLevel(GameTime gameTime) {
            handleQuitToMenu(gameTime);
        }

        void updateLoadState(GameTime gameTime) {
            //if musicManager is still on the current state, change its state to prepare for the next
            if (MusicManager.Instance.gameState != nextGameState)
            {
                MusicManager.Instance.ChangeState(nextGameState, currentLevelNumber);
            }

            //if musicManager is no longer changing a song, start loading the next state
            if (!MusicManager.Instance.changingSongs && loadScreenTimer.IsTimeUp(gameTime.ElapsedGameTime))
            {
                switch (nextGameState)
                {
                    case PRE_LEVEL_STATE:
                        if(!stateLoaded) {
							loadPreLevel();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, PRE_LEVEL_STATE);
                        break;
                    case LEVEL_STATE:
                        if (!stateLoaded) {
                            loadLevel();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, LEVEL_STATE);
                        break;
                    case STORE_LEVEL_STATE:
                        if(!stateLoaded) {
							loadStoreLevel();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, STORE_LEVEL_STATE);
                        break;
                    case CHOOSE_LEVEL_STATE:
                        if(!stateLoaded) {
							loadChooseLevelMenu();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, CHOOSE_LEVEL_STATE);
                        break;
                    case HELP_MENU_STATE:
                        if(!stateLoaded) {
                            loadHelpMenu();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, HELP_MENU_STATE);
                        break;
                    case VICTORY_STATE:
                        if(!stateLoaded) {
                            loadVictoryLevel();
                            stateLoaded = true;
                        }
                        updateLoadStateNextState(gameTime, VICTORY_STATE);
                        break;
                }
            }
        }

        void updateLoadStateNextState(GameTime gameTime, int nextState) {
            TransitionManager.Instance.FadeOut();

            if (loadScreenTimer.IsTimeUp(gameTime.ElapsedGameTime) && stateLoaded)
            {
                loadScreenTimer.Reset();
                setState(nextState, NO_STATE_SPECIFIED);
                stateLoaded = false;
            }
        }

        /**
         * Called when player hits "Quit" in the pause menu during any type of level
         */
        void handleQuitToMenu(GameTime gameTime) {
            ScoringManager.Instance.ClearScores();

            setLoadState(SPLASH_STATE, gameTime);

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
                case VICTORY_STATE:
                    AssetManager.Instance.DisposeVictoryLevelAssets();
                    break;
            }

            AssetManager.Instance.DisposeGameAssets();

            loadSplashScreen();
        }

        /**
         * Passing -1 (NO_STATE_SPECIFIED) here for either state just means we don't care
         * what that state is going to be, it will be taken care of 
         * else where
         */
        void setState(int state, int nextState)
        {
            TransitionManager.Instance.FadeIn();

            if(gameState > NO_STATE_SPECIFIED) {
				gameState = state;
            }

            if(nextState > NO_STATE_SPECIFIED) {
				nextGameState = nextState;
            }
        }

        void setLoadState(int nextState, GameTime gameTime) {
            CutsceneManager.Instance.ResetLetterbox();
            setState(LOAD_STATE, nextState);
            loadScreenTimer.IsTimeUp(gameTime.ElapsedGameTime);
        }

        void preDraw() {
            if(screenManager.isAspectRatioWrong) {
                // Tell the graphics device where to draw to
                graphicsDevice.SetRenderTarget(renderTarget);
            }

            // Clear the buffer
            graphicsDevice.Clear(Color.Black);

            //spriteBatch.Begin();
            spriteBatch.Begin(transformMatrix: ScreenManager.transformMatrix);
        }

        void postDraw() {
            if(screenManager.isAspectRatioWrong) {
				spriteBatch.End();
                
				// Let the graphics device know you are done and return to drawing according to its dimensions
				graphicsDevice.SetRenderTarget(null);
				
				spriteBatch.Begin();
				spriteBatch.Draw(renderTarget,
				                 renderTargetPositionVector,
				                 renderTargetRect,
				                 Color.White);
            }

            spriteBatch.End();
        }

        public void Draw(GameTime gameTime) {
            preDraw();

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
                case HELP_MENU_STATE:
                    drawHelpMenu();
                    break;
                case PRE_LEVEL_STATE:
                    drawCutsceneLevel();
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
                case VICTORY_STATE:
                    drawCutsceneLevel();
                    break;
            }

            TransitionManager.Instance.Draw(spriteBatch);
            CutsceneManager.Instance.Draw(spriteBatch);

            Logger.Instance.DrawToScreen(spriteBatch);

            postDraw();
        }

        void drawSplash()
        {
            spriteBatch.Draw(AssetManager.Instance.splashTexture, basePositionVector);
        }

        void drawMainMenu()
        {
            mainMenu.Draw(spriteBatch);
            currentController.Draw(spriteBatch);
        }

        void drawChooseLevelMenu() {
            chooseLevelMenu.Draw(spriteBatch);
            currentController.Draw(spriteBatch);
        }

        void drawHelpMenu() {
            helpMenu.Draw(spriteBatch);
            currentController.Draw(spriteBatch);
        }

        void drawLevel()
        {
            //Draw level related stuff (background and monsters)
            currentLevel.Draw(spriteBatch);

			//Draw text related stuff
			TextManager.Instance.Draw(spriteBatch);

            //Draw coins on level
            CoinManager.Instance.Draw(spriteBatch);

            //health, coin counts, scores, etc
            HUDManager.Instance.Draw(spriteBatch);

            //Draw controller and buttons
            currentController.Draw(spriteBatch);

            if (((GameController)currentController).isPaused)
            {
                PauseManager.Instance.Draw(spriteBatch);
            }
        }

        void drawCutsceneLevel() {
            //Draw level related stuff (background and monsters)
            currentLevel.Draw(spriteBatch);

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

        void resetPlayerStats()
        {
            HealthShieldManager.Instance.Reset();
            PlayerManager.Instance.ResetPlayer();
            CoinManager.Instance.ResetCoins();
        }
    }
}
