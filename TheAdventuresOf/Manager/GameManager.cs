using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameManager
    {
        public const int SPLASH_STATE = 0;
        public const int MENU_STATE = 1;
        public const int LEVEL_STATE = 2;
        public const int LOAD_STATE = 3;

        Vector2 basePositionVector = new Vector2(0, 0);

        int nextGameState = -1;
        int gameState = SPLASH_STATE;
        GraphicsDevice graphicsDevice;
        ContentManager contentManager;
        ScreenManager screenManager;
        MusicManager musicManager;
        SpriteBatch spriteBatch;
        Level currentLevel = null;
        MainMenu mainMenu;

        Controller currentController;

        //TODO: load this information in an XML file
        float splashTimeLimit = 2.5f;
        Timer splashTimer;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;
            this.musicManager = new MusicManager(gameState);
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            screenManager = new ScreenManager(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            loadSplashScreen();
        }

        void loadSplashScreen() {
            Console.WriteLine("Load splash screen");
            AssetManager.Instance.LoadSplashAssets(graphicsDevice, contentManager);

            gameState = SPLASH_STATE;
            musicManager.ChangeState(gameState);

            splashTimer = new Timer(splashTimeLimit);
        }

        void loadMainMenu() {
            Console.WriteLine("Load Main Menu");
            mainMenu = new MainMenu();
            mainMenu.LoadMenu(graphicsDevice);

            gameState = MENU_STATE;

            currentController = new MenuController();
            currentController.InitializeController();
        }

        //only load level assets. will eventually have switch for level number
        void loadLevelAssets() {
            Console.WriteLine("Load Level assets");

            currentLevel = new Level();

            AssetManager.Instance.LoadGameAssets(graphicsDevice);
            AssetManager.Instance.LoadLevelAssets(graphicsDevice, contentManager);

            XmlImporter.LoadGameInformation();
            XmlImporter.LoadLevelInformation(currentLevel);
        }

        //start playing level. will eventually have switch for level number
        void loadLevel()
        {
            currentLevel.InitializeLevel();

            gameState = LEVEL_STATE;

            currentController = new GameController();
            currentController.InitializeController();
        }


        public void Update(GameTime gameTime)
        {
            musicManager.Update(gameTime);

            switch(gameState) {
                case SPLASH_STATE:
                    updateSplash(gameTime);
                    break;
                case MENU_STATE:
                    screenManager.Update(gameTime, currentController);
                    updateMenu(gameTime);
                    break;
                case LEVEL_STATE:
                    screenManager.Update(gameTime, currentController);
                    updateLevel(gameTime);
                    break;
                case LOAD_STATE:
                    updateLoadState(gameTime);
                    break;
            }
        }

        void updateSplash(GameTime gameTime) {

            bool timeUp = splashTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) {
                splashTimer.Reset();

                //no need to get load screen involved
                loadMainMenu();

                //need to throw away splash texture and information after this
            }
        }

        void updateMenu(GameTime gameTime) {
            mainMenu.Update(gameTime, (MenuController) currentController);

            if(mainMenu.proceedToNextState) {
                gameState = LOAD_STATE;
                nextGameState = LEVEL_STATE;

                //load level assets for nextGameState
                loadLevelAssets();
            }
        }

        void updateLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController) currentController);

            //should constantly check if level is "done"
            //level will have a public variable for this eventually
            //when done, we can switch state
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
                    //TODO: will I eventually have more levels here? kind of meaningless to switch for just the level state
                    case LEVEL_STATE:
                        loadLevel();
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
                    drawMenu();
                    break;
                case LEVEL_STATE:
                    drawLevel();
                    break;
                case LOAD_STATE:
                    drawLoadScreen();
                    break;
            }

            //TODO: this will eventually be drawn with the level only
            //Calculate and draw fps to screen
            FrameRate.Draw(spriteBatch, gameTime);

            spriteBatch.End();
        }

        void drawSplash()
        {
            spriteBatch.Draw(AssetManager.Instance.splashTexture, basePositionVector);
        }

        void drawMenu()
        {
            mainMenu.Draw(spriteBatch);

            //draw play buttons, etc
            currentController.Draw(spriteBatch);
        }

        void drawLevel()
        {
            //Draw level related stuff (background and monsters)
            currentLevel.Draw(spriteBatch);

            //Draw controller and buttons
            currentController.Draw(spriteBatch);
        }

        void drawLoadScreen()
        {
            //TODO: should have a new screen for load screen rather than splash screen
            drawSplash();
        }
    }
}
