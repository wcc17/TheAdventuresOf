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

        //ensuring load screen shows for at least x number of seconds
        float loadScreenTimeLimit = 3.0f;
        Timer loadScreenTimer;
        bool stateLoaded = false; //used in UpdateLoadScreen to determine when to load next state after timer is up

        public bool isTransitioningIn = true;
        public bool isTransitioningOut = false;
        bool isTransitionedOut = false;
        float transitionTextureAlpha = 1.0f;
        float fadeInSpeed = 1.9f;
        float fadeOutSpeed = 1.5f;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;
            MusicManager.Instance.InitializeMusicManager(gameState);

            loadScreenTimer = new Timer(loadScreenTimeLimit);
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

            setState(SPLASH_STATE, -1);
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

            setState(MENU_STATE, -1);

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

            currentLevel = new PreLevel(AssetManager.Instance.preLevelTexture, (GameController) currentController);
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
        }

        void loadLevel()
        {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode);

            currentLevel.InitializeLevel(USE_PLAYER_SPAWN_ANIMATION);
        }

        void loadStoreLevel() {
            HUDManager.Instance.Initialize(currentLevelNumber, endlessMode);

            currentLevel.InitializeLevel(NO_PLAYER_SPAWN_ANIMATION);
        }

        public void Update(GameTime gameTime, bool isGameActive)
        {
            if (isTransitioningIn || isTransitioningOut)
            {
                handleLevelTransition(gameTime);
            }

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
                prepareLevelState(PRE_LEVEL_STATE, gameTime);
            } else if(mainMenu.proceedToChooseLevelState) {
                setLoadState(CHOOSE_LEVEL_STATE, gameTime);
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

                prepareLevelState(LEVEL_STATE, gameTime);
            } else if(chooseLevelMenu.proceedToEndlessLevelState) {
                storyMode = false;
                endlessMode = true;
                currentLevelNumber = chooseLevelMenu.currentLevelSelected;

                //have to force the music to start since it normally starts in the pre level
                AssetManager.Instance.LoadLevelMusicAssets(graphicsDevice, contentManager, currentLevelNumber); //need to force load music 
                MusicManager.Instance.StartLevelMusic();

                prepareLevelState(LEVEL_STATE, gameTime);
            } else if(chooseLevelMenu.proceedToMainMenuState) {
                setLoadState(MENU_STATE, gameTime);
                loadMainMenu();
            }

			CoinManager.isEndlessMode = endlessMode;
        }

        //called only after leaving main menu or chooselevel menu since they share so much code
        void prepareLevelState(int nextState, GameTime gameTime) {
            //setLoadState(STORE_LEVEL_STATE, gameTime); //TODO: uncomment to go straight to storeLevel
            setLoadState(nextState, gameTime);

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

            handleLevelTransitionOutBeforeLoad();

            if (currentLevel.nextLevel) {
                setLoadState(LEVEL_STATE, gameTime);

                AssetManager.Instance.DisposePreLevelAssets();
                loadLevelAssets();
            }                

        }

        void updateGameLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController) currentController);

            TextManager.Instance.Update(gameTime);

            handleLevelTransitionOutBeforeLoad();

            if (currentLevel.nextLevel) {
                setLoadState(-1, gameTime);
                AssetManager.Instance.DisposeLevelAssets();

                //if player is dead at this point, go to main menu
                if (storyMode)
                {
                    if (((Level)currentLevel).playerDied)
                    {
                        handleQuitToMenu(gameTime);
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

            handleLevelTransitionOutBeforeLoad();

            if(currentLevel.nextLevel) {
                setLoadState(PRE_LEVEL_STATE, gameTime);
                currentLevelNumber++;

                AssetManager.Instance.DisposeStoreAssets();
                loadPreLevelAssets();
            }
        }

        void handleLevelTransitionOutBeforeLoad() {
            if (currentLevel.shouldTransitionOut && !isTransitioningOut && !isTransitionedOut)
            {
                isTransitionedOut = false;
                setIsTransitioningOut();
            }
            else if (currentLevel.shouldTransitionOut && isTransitionedOut)
            {
                currentLevel.nextLevel = true;
            }
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
                }
            }
        }

        void updateLoadStateNextState(GameTime gameTime, int nextState) {
            if (loadScreenTimer.IsTimeUp(gameTime.ElapsedGameTime) && stateLoaded)
            {
                loadScreenTimer.Reset();
                setState(nextState, -1);
                stateLoaded = false;
            }
        }

        /**
         * Called when player hits "Quit" in the pause menu during any type of level
         */
        void handleQuitToMenu(GameTime gameTime) {
            SaveGameManager.Instance.SetLevelHighScore(currentLevelNumber, 
                                                       ScoringManager.Instance.score);
            ScoringManager.Instance.ClearScores();
            currentLevel.ResetUponReturnToMenu();

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
            }
            AssetManager.Instance.DisposeGameAssets();

            //loadMainMenu();
            loadSplashScreen();
        }

        void handleLevelTransition(GameTime gameTime)
        {
            float fadeSpeed = fadeOutSpeed;
            int multiplier = 1;
            if (isTransitioningIn)
            {
                fadeSpeed = fadeInSpeed;
                multiplier = -1;
            }

			float amountToFade = (float)(fadeSpeed * gameTime.ElapsedGameTime.TotalSeconds);
            transitionTextureAlpha += (amountToFade * multiplier);

            if (transitionTextureAlpha < 0 || transitionTextureAlpha > 1)
            {
                if (isTransitioningIn)
                {
                    transitionTextureAlpha = 0;
                }
                else if (isTransitioningOut)
                {
                    transitionTextureAlpha = 1;
                    isTransitionedOut = true;
                }

                isTransitioningIn = false;
                isTransitioningOut = false;
            }
        }

        void setIsTransitioningIn()
        {
            isTransitioningIn = true;
            transitionTextureAlpha = 1.0f;
        }

        void setIsTransitioningOut()
        {
            isTransitioningOut = true;
            transitionTextureAlpha = 0f;
        }

        /**
         * Passing -1 here for either state just means we don't care
         * what that state is going to be, it will be taken care of 
         * else where
         */
        void setState(int state, int nextState)
        {
            setIsTransitioningIn();

            if(gameState > -1) {
				gameState = state;
            }

            if(nextState > -1) {
				nextGameState = nextState;
            }
        }

        void setLoadState(int nextState, GameTime gameTime) {
            setState(LOAD_STATE, nextState);
            loadScreenTimer.IsTimeUp(gameTime.ElapsedGameTime);
        }

        void drawLevelTransition()
        {
            if (isTransitioningIn || isTransitioningOut)
            {
                spriteBatch.Draw(AssetManager.Instance.blackBackgroundTexture, new Vector2(0, 0), Color.Black * transitionTextureAlpha);
            }
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

            drawLevelTransition();

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
