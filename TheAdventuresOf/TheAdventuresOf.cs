﻿using System;

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
		Monster blockMonster;
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
			blockMonster = new Monster();
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

			//need level textures to do this, so initializing in LoadContent
			level.InitializeLevel();

			player = XmlImporter.LoadPlayerInformation(player);
			player.InitializeCharacter(200f, 
			                           Level.groundLevel, 
			                           AssetManager.playerTexture.Width / player.frameCount, 
			                           AssetManager.playerTexture.Height);

			blockMonster = XmlImporter.LoadBlockMonsterInformation(blockMonster);
			blockMonster.InitializeCharacter(500f, 
			                                 Level.groundLevel,
			                                 AssetManager.blockMonsterTexture.Width / blockMonster.frameCount, 
			                                 AssetManager.blockMonsterTexture.Height);

			FrameRate.LoadContent(Content);
			Controller.InitializeController(this.GraphicsDevice);
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

			//TODO: eventually this will be handled else where when there are more than one monsters, but this is fine for only one.
			//preferablly they will just be removed from a collection that is being updated or drawn
			if (!blockMonster.isDead)
			{
				blockMonster.Update(gameTime);
			}
			else 
			{
				Console.WriteLine("Resetting monster");
				blockMonster.positionVector.X = level.GetRandomXLocation(blockMonster.characterWidth);
				blockMonster.InitializeSpawn();
			}

			level.CheckCollision(player);

			//TODO: eventually this will be handled else where when there are more than one monsters, but this is fine for only one.
			//preferablly they will just be removed from a collection that is being updated or drawn
			if (!blockMonster.isDead)
			{
				level.CheckCollision(blockMonster);
			}

			//TODO: eventually this will be handled else where when there are more than one monsters, but this is fine for only one.
			//preferablly they will just be removed from a collection that is being updated or drawn
			if (!blockMonster.isDead)
			{
				player.CheckCollision(blockMonster);
			}

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			//graphics.GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin(transformMatrix: screen.scaleMatrix);

			//Draw background 
			level.Draw(spriteBatch);

			//TODO: eventually this will be handled else where when there are more than one monsters, but this is fine for only one.
			//preferablly they will just be removed from a collection that is being updated or drawn
			if (!blockMonster.isDead)
			{
				//Draw monster
				blockMonster.Draw(spriteBatch, AssetManager.blockMonsterTexture);
			}

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

