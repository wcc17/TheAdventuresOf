using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameManager
    {
        GraphicsDevice graphicsDevice;
        ContentManager contentManager;
        SpriteBatch spriteBatch;
        Screen screen;
        Level currentLevel = null;

        public GameManager(GraphicsDevice graphicsDevice, ContentManager contentManager)
        {
            this.graphicsDevice = graphicsDevice;
            this.contentManager = contentManager;

            screen = new Screen(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);

            //TODO: should behandled elsewhere
            currentLevel = new Level();
        }

        public void LoadContent() {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(graphicsDevice);

            AssetManager.Instance.LoadMenuAssets(graphicsDevice);

            //TODO: should I load this later when I'm actually ready to go into the game?
            AssetManager.Instance.LoadGameAssets(graphicsDevice, contentManager);
            AssetManager.Instance.LoadLevelAssets(graphicsDevice);

            XmlImporter.LoadGameInformation();
            XmlImporter.LoadLevelInformation(currentLevel);

            currentLevel.InitializeLevel();

            Controller.InitializeController();
        }

        public void Update(GameTime gameTime) {
            screen.Update(gameTime);
            currentLevel.Update(gameTime);
        }

        public void Draw(GameTime gameTime) {
            spriteBatch.Begin(transformMatrix: screen.scaleMatrix);

            //Draw level related stuff (background and monsters)
            currentLevel.Draw(spriteBatch);

            //Draw controller and buttons
            Controller.Draw(spriteBatch);

            //Calculate and draw fps to screen
            FrameRate.Draw(spriteBatch, gameTime);

            spriteBatch.End();
        }
    }
}
