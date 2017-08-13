using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameManager
    {
        const int SPLASH_STATE = 0;
        const int MENU_STATE = 1;
        const int LEVEL_STATE = 2;

        Vector2 basePositionVector = new Vector2(0, 0);

        int gameState = SPLASH_STATE;
        GraphicsDevice graphicsDevice;
        ContentManager contentManager;
        SpriteBatch spriteBatch;
        Screen screen;
        Level currentLevel = null;
        MainMenu mainMenu;

        Controller currentController;

        //TODO: load this information in an XML file
        float splashTimeLimit = 5.0f;
        Timer splashTimer;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            screen = new Screen(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            loadSplashScreen();
        }

        void loadSplashScreen() {
            Console.WriteLine("Load splash screen");

            gameState = SPLASH_STATE;

            splashTimer = new Timer(splashTimeLimit);
            AssetManager.Instance.LoadSplashAssets(graphicsDevice, contentManager);
        }

        void loadMainMenu() {
            Console.WriteLine("Load Main Menu");
            mainMenu = new MainMenu();
            mainMenu.LoadMenu(graphicsDevice);

            gameState = MENU_STATE;

            currentController = new MenuController();
            currentController.InitializeController();
        }

        void loadLevel()
        {
            Console.WriteLine("Load Level");

            currentLevel = new Level();

            //TODO: should I load this later when I'm actually ready to go into the game?
            AssetManager.Instance.LoadGameAssets(graphicsDevice); 
            AssetManager.Instance.LoadLevelAssets(graphicsDevice);

            XmlImporter.LoadGameInformation();
            XmlImporter.LoadLevelInformation(currentLevel);

            currentLevel.InitializeLevel();

            gameState = LEVEL_STATE;

            currentController = new GameController();
            currentController.InitializeController();
        }


        public void Update(GameTime gameTime)
        {
            switch(gameState) {
                case SPLASH_STATE:
                    Console.WriteLine("Update Splash State");
                    updateSplash(gameTime);
                    break;
                case MENU_STATE:
                    Console.WriteLine("Update Menu State");
                    screen.Update(gameTime, currentController);
                    updateMenu(gameTime);
                    break;
                case LEVEL_STATE:
                    Console.WriteLine("Update Level State:");
                    screen.Update(gameTime, currentController);
                    updateLevel(gameTime);
                    break;
            }
        }

        void updateSplash(GameTime gameTime) {

            bool timeUp = splashTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) {
                splashTimer.Reset();

                loadMainMenu();
                //gameState = LEVEL_STATE;

                //need to throw away splash texture and information after this
            }
        }

        void updateMenu(GameTime gameTime) {
            mainMenu.Update(gameTime, (MenuController) currentController);

            if(mainMenu.proceedToNextState) {
                loadLevel();
            }
        }

        void updateLevel(GameTime gameTime) {
            currentLevel.Update(gameTime, (GameController) currentController);

            //should constantly check if level is "done"
            //level will have a public variable for this eventually
            //when done, we can switch state
        }


        void drawSplash() {
            spriteBatch.Draw(AssetManager.Instance.splashTexture, basePositionVector);    
        }

        void drawMenu() {
            mainMenu.Draw(spriteBatch);

            //draw play buttons, etc
            currentController.Draw(spriteBatch);
        }

        void drawLevel() {
	        //Draw level related stuff (background and monsters)
	        currentLevel.Draw(spriteBatch);

	        //Draw controller and buttons
	        currentController.Draw(spriteBatch);
        }

        public void Draw(GameTime gameTime) {
            spriteBatch.Begin(transformMatrix: screen.scaleMatrix);

            switch(gameState) {
                case SPLASH_STATE:
                    Console.WriteLine("Drawing splash state");
                    drawSplash();
                    break;
                case MENU_STATE:
                    Console.WriteLine("Drawing menu state");
                    drawMenu();
                    break;
                case LEVEL_STATE:
                    Console.WriteLine("Drawing level state");
                    drawLevel();
                    break;
            }

            //TODO: this will eventually be drawn with the level only
            //Calculate and draw fps to screen
            FrameRate.Draw(spriteBatch, gameTime);

            spriteBatch.End();
        }
    }
}
