using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
	/// <summary>
	/// This is the main type for your game.
	/// </summary>
	public class TheAdventuresOf : Game
	{
        GraphicsDeviceManager graphics;
        GameManager gameManager;

		public TheAdventuresOf()
		{
			//despite the annoying xamarin warning that graphics isn't used, this MUST be instantiated
			graphics = new GraphicsDeviceManager(this);

			Content.RootDirectory = "Content";
            XmlManager.GetXMLInformation();

#if !__IOS__ && !__TVOS__ && !__ANDROID__
            graphics.IsFullScreen = true;
#endif
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
		{
            gameManager = new GameManager(this.GraphicsDevice, Content);
            gameManager = XmlManager.LoadGameManagerInformation(gameManager);
            gameManager.Initialize();
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
            gameManager.LoadContent();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
            // For Mobile devices, this logic will close the Game when the Back button is pressed
            // Exit() is obsolete on iOS
#if !__IOS__ && !__TVOS__
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				Exit();
#endif
            gameManager.Update(gameTime, this.IsActive);

#if !__IOS__ && !__TVOS__ && !__ANDROID__
            if(gameManager.showMouse)
            {
                IsMouseVisible = true;
            } else
            {
                IsMouseVisible = false;
            }
#endif

            base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
            graphics.GraphicsDevice.Clear(Color.Black);

            gameManager.Draw(gameTime);

			base.Draw(gameTime);
		}
	}
}

