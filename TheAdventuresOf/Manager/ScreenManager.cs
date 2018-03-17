using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input.Touch;

namespace TheAdventuresOf
{
	public class ScreenManager
	{
		public static Matrix transformMatrix;
        public const float VIRTUAL_SCREEN_WIDTH = 1920f;
        public const float VIRTUAL_SCREEN_HEIGHT = 1080f;
        public float deviceScreenWidth;
        public float deviceScreenHeight;
        public Viewport viewport;
		public const int MULTI_TOUCH_LIMIT = 2;
        public bool isResolutionHigherThanDesired;
        public bool isAspectRatioWrong;


		//actual width and actual height are the values that the device thinks the screen should be, not what we want it to be
		//so those weird scaled res for iphone 6s plus, etc.
        public ScreenManager(float deviceScreenWidth, float deviceScreenHeight) {
			Logger.WriteToConsole("Instantiating ScreenManager object");

            this.deviceScreenWidth = deviceScreenWidth;
            this.deviceScreenHeight = deviceScreenHeight;

            checkDeviceScreenSize();

            createVirtualViewport();
            createTransformMatrix();
		}

        void checkDeviceScreenSize() {
            float desiredAspectRatio = VIRTUAL_SCREEN_WIDTH / VIRTUAL_SCREEN_HEIGHT;
            float actualAspectRatio = deviceScreenWidth / deviceScreenHeight;

            double roundedDesiredAspectRatio = Math.Round(desiredAspectRatio, 2);
            double roundedActualAspectRatio = Math.Round(actualAspectRatio, 2);

            //TODO: if they make an even larger iphone X the image will appear very small on the screen
            isAspectRatioWrong = roundedActualAspectRatio > roundedDesiredAspectRatio;
        }

        void createVirtualViewport() {
            if(isAspectRatioWrong) {
				viewport = new Viewport {
					X = 0,
					Y = 0,
					Width = (int)VIRTUAL_SCREEN_WIDTH,
					Height = (int)VIRTUAL_SCREEN_HEIGHT
				};
            }
        }

        void createTransformMatrix() {
            Logger.WriteToConsole("Generating scaling matrix");

            if(isAspectRatioWrong) {
				Vector3 translateVector = new Vector3() {
					X = (deviceScreenWidth / 2) - (VIRTUAL_SCREEN_WIDTH / 2),
					Y = 0,
					Z = 0
				};
				
				transformMatrix = Matrix.CreateTranslation(translateVector);
            } else {
                float scaleX = (float)deviceScreenWidth / VIRTUAL_SCREEN_WIDTH;
                float scaleY = (float)deviceScreenHeight / VIRTUAL_SCREEN_HEIGHT;
                transformMatrix = Matrix.CreateScale(scaleX, scaleY, 1.0f);
            }
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

