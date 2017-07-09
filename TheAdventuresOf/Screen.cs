using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input.Touch;

namespace TheAdventuresOf
{
	public class Screen
	{
		public const float FULL_SCREEN_WIDTH = 1920f;
		public const float FULL_SCREEN_HEIGHT = 1080f;

		public const int multiTouchLimit = 2;

		public Matrix scaleMatrix { get; set; }

		//actual width and actual height are the values that the device thinks the screen should be, not what we want it to be
		//so those weird scaled res for iphone 6s plus, etc.
		public Screen(int actualWidth, int actualHeight)
		{
			Console.WriteLine("Instantiating Screen object");

			scaleMatrix = CreateScaleMatrix(actualWidth, actualHeight);
		}

		private Matrix CreateScaleMatrix(int actualWidth, int actualHeight)
		{
			Console.WriteLine("Generating scaling matrix");

			var scaleX = (float)actualWidth / FULL_SCREEN_WIDTH;
			var scaleY = (float)actualHeight / FULL_SCREEN_HEIGHT;
			var matrix = Matrix.CreateScale(scaleX, scaleY, 1.0f);

			return matrix;
		}

		public void Update(GameTime gameTime)
		{
			HandleInput(gameTime);
		}

		public void HandleInput(GameTime gameTime)
		{
			//reset the controller
			Controller.ResetButtonPressedValues();

			List<Point> touchPoints = GetTouchInput();

			if (touchPoints.Count > 0)
			{
				for (int i = 0; i < touchPoints.Count; i++)
				{
					if (i < multiTouchLimit)
					{
						Controller.HandleInput(touchPoints[i]);
					}
				}
			}

            Controller.HandleImpacts();
		}

		private List<Point> GetTouchInput()
		{
			List<Point> touchPoints = new List<Point>();
			TouchCollection touchCollection = TouchPanel.GetState();

			if (touchCollection.Count > 0)
			{
				for (int i = 0; i < touchCollection.Count; i++)
				{
					if (i < multiTouchLimit)
					{
						//these return as float, but area always either .0 or .9998 or something like that. 
						Point originalPoint = new Point((int)touchCollection[i].Position.X, (int)touchCollection[i].Position.Y);
						Point scaledPoint = GetScaledTouchInput(originalPoint);
						
						touchPoints.Add(scaledPoint);
					}
				}
			}
			return touchPoints;
		}

		public Point GetScaledTouchInput(Point originalPoint)
		{
			var matrix = Matrix.Invert(scaleMatrix);
			Point scaledPoint = Vector2.Transform(originalPoint.ToVector2(), matrix).ToPoint();
			return scaledPoint;
		}
	}
}

