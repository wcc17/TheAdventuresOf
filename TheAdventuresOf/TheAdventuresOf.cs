using System;

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
		SpriteBatch spriteBatch;
		Screen screen;

		Player player;
		Level level;

		public TheAdventuresOf()
		{
			//despite the annoying xamarin warning that graphics isn't used, this MUST be instantiated
			graphics = new GraphicsDeviceManager(this);

			Content.RootDirectory = "Content";
			XmlImporter.GetXMLInformation();
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			screen = new Screen(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);
			level = new Level();
			base.Initialize();

		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			AssetManager.Instance.LoadGameAssets(this.GraphicsDevice);
			AssetManager.Instance.LoadLevelAssets(this.GraphicsDevice);

			XmlImporter.LoadGameInformation();
			XmlImporter.LoadLevelInformation(level);

			level.InitializeLevel();

			FrameRate.LoadContent(Content);
			Controller.InitializeController();
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

			screen.Update(gameTime);
			level.Update(gameTime);
			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			spriteBatch.Begin(transformMatrix: screen.scaleMatrix);

			//Draw level related stuff (background and monsters)
			level.Draw(spriteBatch);

			//Draw controller and buttons
			Controller.Draw(spriteBatch);

			//Calculate and draw fps to screen
			FrameRate.Draw(spriteBatch, gameTime);

			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}

