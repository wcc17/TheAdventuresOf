using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
	public class Animation
	{
		public List<AnimationFrame> frames = new List<AnimationFrame>();
		TimeSpan timeIntoAnimation;

		TimeSpan duration;

		//get the current frame that we SHOULD be on
		public Rectangle CurrentRectangle
		{
			get
			{
				AnimationFrame currentFrame = null;

				// See if we can find the frame
				TimeSpan accumulatedTime = TimeSpan.FromSeconds(0);
				foreach (var frame in frames)
				{
					if (accumulatedTime + frame.duration >= timeIntoAnimation)
					{
						currentFrame = frame;
						break;
					}
					else
					{
						accumulatedTime += frame.duration;
					}
				}

				// If no frame was found, then try the last frame, 
				// just in case timeIntoAnimation somehow exceeds Duration
				if (currentFrame == null)
				{
					currentFrame = frames.LastOrDefault();
				}

				// If we found a frame, return its rectangle, otherwise
				// return an empty rectangle (one with no width or height)
				if (currentFrame != null)
				{
					return currentFrame.sourceRectangle;
				}
				else
				{
					return Rectangle.Empty;
				}
			}

			//if warning on set method 'accessor never reaches end..." still exists, its incorrect according to StackO
			set
			{
				CurrentRectangle = value;
			}
		}

		public void CalculateAnimationDuration()
		{
			double totalSeconds = 0;

			foreach (var frame in frames)
			{
				totalSeconds += frame.duration.TotalSeconds;
			}

			duration = TimeSpan.FromSeconds(totalSeconds);
		}

		public void AddFrame(Rectangle rectangle, TimeSpan dur)
		{
			AnimationFrame newFrame = new AnimationFrame()
			{
				sourceRectangle = rectangle,
				duration = dur
			};

			frames.Add(newFrame);

			//recaculate animation duration after a new frame is added
			CalculateAnimationDuration();
		}

		public void Update(GameTime gameTime)
		{
			double secondsIntoAnimation = timeIntoAnimation.TotalSeconds + gameTime.ElapsedGameTime.TotalSeconds;

			double remainder = secondsIntoAnimation % duration.TotalSeconds;

 			timeIntoAnimation = TimeSpan.FromSeconds(remainder);
		}
	}
}

