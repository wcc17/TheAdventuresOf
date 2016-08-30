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
			player = new Player();
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

			AssetManager.LoadGameAssets(this.GraphicsDevice);
			AssetManager.LoadLevelAssets(this.GraphicsDevice);

			XmlImporter.LoadGameInformation();
			XmlImporter.LoadLevelInformation(level);
			XmlImporter.LoadBlockMonsterInformation();
			XmlImporter.LoadSunMonsterInformation();
			XmlImporter.LoadCannonMonsterInformation();
			XmlImporter.LoadPlayerInformation(player);

			level.InitializeLevel();
			player.InitializePlayer(200f, 
			                           level.groundLevel, 
			                           AssetManager.playerTexture.Width / player.frameCount, 
			                           AssetManager.playerTexture.Height);

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
			player.Update(gameTime, Controller.isButtonPressed);
			level.Update(gameTime, player);
			level.CheckCollision(player);

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

			//Draw player
			player.Draw(spriteBatch, AssetManager.playerTexture);

			//Draw controller and buttons
			Controller.Draw(spriteBatch);

			//Calculate and draw fps to screen
			FrameRate.Draw(spriteBatch, gameTime);

			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}

