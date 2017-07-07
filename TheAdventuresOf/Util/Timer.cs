using System;
namespace TheAdventuresOf
{
    public class Timer
    {
        public TimeSpan delayTime = TimeSpan.FromSeconds(0);
        public float delayTimeLimit;

        public Timer(float delayTimeLimit)
        {
            this.delayTimeLimit = delayTimeLimit;
        }

        public bool IsTimeUp(TimeSpan elapsedGameTime) 
        {
            delayTime = delayTime.Add(elapsedGameTime);
            if(delayTime.TotalSeconds > delayTimeLimit) 
            {
                return true;
            }

            return false;
        }

        public void Reset() {
            delayTime = TimeSpan.FromSeconds(0);
        }


    }
}
