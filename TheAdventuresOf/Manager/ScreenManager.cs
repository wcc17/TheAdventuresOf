using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input.Touch;

namespace TheAdventuresOf
{
	public class ScreenManager
	{
		public const float FULL_SCREEN_WIDTH = 1920f;
		public const float FULL_SCREEN_HEIGHT = 1080f;
        public float deviceScreenWidth;
        public float deviceScreenHeight;
        public Viewport viewport;
        public static Matrix transformMatrix;

		public const int MULTI_TOUCH_LIMIT = 2;


		//actual width and actual height are the values that the device thinks the screen should be, not what we want it to be
		//so those weird scaled res for iphone 6s plus, etc.
        public ScreenManager(float deviceScreenWidth, float deviceScreenHeight) {
			Logger.WriteToConsole("Instantiating ScreenManager object");

            this.deviceScreenWidth = deviceScreenWidth;
            this.deviceScreenHeight = deviceScreenHeight;
            createVirtualViewport();
            createTransformMatrix();
		}


        void createVirtualViewport() {
            viewport = new Viewport {
                X = 0, //(int)((deviceScreenWidth / 2) - (FULL_SCREEN_WIDTH / 2)),
                Y = 0,
                Width = (int)FULL_SCREEN_WIDTH,
                Height = (int)FULL_SCREEN_HEIGHT
            };
        }

        void createTransformMatrix()
		{
            Logger.WriteToConsole("Generating scaling matrix");

            float scaleX = (float)deviceScreenWidth / FULL_SCREEN_WIDTH;
            float scaleY = (float)deviceScreenHeight / FULL_SCREEN_HEIGHT;

            //TODO: only needs to happen on the iphoneX
            Vector3 translateVector = new Vector3() {
                X = (deviceScreenWidth / 2) - (FULL_SCREEN_WIDTH / 2),
                Y = 0,
                Z = 0
            };

            //TODO: only needs to happen on the iphoneX
            transformMatrix = Matrix.CreateTranslation(translateVector);

            //TODO: needs to happen on other phones
            //scaleMatrix = Matrix.CreateScale(scaleX, scaleY, 1.0f);
		}

		public void Update(Controller controller)
		{
			HandleInput(controller);
		}

        public void HandleInput(Controller controller)
        {
            //reset the controller
            controller.ResetButtonPressedValues();

            #if __IOS__ || __ANDROID__
                handleInputMobile(controller);
            #else
                handleInputWindows(controller);
            #endif

            controller.HandleImpacts();
		}

        private void handleInputMobile(Controller controller)
        {
            List<Point> touchPoints = GetTouchInput();
            controller.HandleInput(touchPoints);
        }

        private void handleInputWindows(Controller controller)
        {
            controller.HandleInput(new List<Point>());
        }

		private List<Point> GetTouchInput()
		{
			List<Point> touchPoints = new List<Point>();
			TouchCollection touchCollection = TouchPanel.GetState();

			if (touchCollection.Count > 0)
			{
                for (int i = 0; i < touchCollection.Count; i++)
                {
                    if (i < MULTI_TOUCH_LIMIT)
                    {
                        //these return as float, but area always either .0 or .9998 or something like that. 
                        Point originalPoint = new Point((int)touchCollection[i].Position.X, (int)touchCollection[i].Position.Y);
                        Point scaledPoint = GetScaledInputPoint(originalPoint);

						touchPoints.Add(scaledPoint);
					}
				}
			}
			return touchPoints;
		}

		public static Point GetScaledInputPoint(Point originalPoint)
		{
			var matrix = Matrix.Invert(transformMatrix);
			Point scaledPoint = Vector2.Transform(originalPoint.ToVector2(), matrix).ToPoint();
			return scaledPoint;
		}
	}
}

