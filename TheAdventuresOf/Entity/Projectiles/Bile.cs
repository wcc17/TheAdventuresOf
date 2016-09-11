using System;
using Microsoft.Xna.Framework;
namespace TheAdventuresOf
{
	public class Bile : Projectile
	{
		public Bile()
		{
			//TODO: need a solution for loading this somewhere else
			speed = 400;
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			base.Update(gameTime, buttonPressed);

			Move(gameTime);
		}

		public override void Move(GameTime gameTime, int direction = 0)
		{
			Console.WriteLine("Moving");

			UpdateEntityBounds();
		}
	}
}

