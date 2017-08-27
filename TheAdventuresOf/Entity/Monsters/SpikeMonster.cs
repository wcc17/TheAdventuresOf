using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class SpikeMonster : Monster
    {
        public static float floatHeight;
        public static float attackDelayTime;
        public float attackSpeed;
        public bool didDamagePlayer = false;

        //different from delay before attack. This is how long monster will hover above player before dropping down
        public TimeSpan attackTimeDelayed = TimeSpan.FromSeconds(0);
        //when attackTimeDelayed passes attackDelayTime, this will be true and monster will drop
        //differentiation from attackState to be clear about each one means. isAttacking is attacking, isAttackState is for animation
        bool isAttacking = false; 

        Animation attackAnimation;
        Animation movingAnimation;

        public void SetSpikeMonsterData(SpikeMonster spikeMonster) 
        {
            entityTag = spikeMonster.entityTag;
            speed = spikeMonster.speed;
            frameCount = spikeMonster.frameCount;
            moveDistanceLimit = spikeMonster.moveDistanceLimit;
            actionDelayTime = spikeMonster.actionDelayTime;
            rotationSpeed = spikeMonster.rotationSpeed;
            upDownSpeed = spikeMonster.upDownSpeed;
            attackSpeed = spikeMonster.attackSpeed;

            monsterTexture = AssetManager.Instance.spikeMonsterTexture;
        }

        public override void InitializeSpawn()
        {
            Reset();

            //doesn't really matter what direction, just need one to draw 
            moveLeft = true; 
            isSpawning = true;
            isAttacking = false;
            delayAction = true;
        }

        public override void InitializeAnimation()
        {
            base.InitializeAnimation();

            attackAnimation = new Animation();
            attackAnimation.AddFrame(new Rectangle(entityWidth,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));

            movingAnimation = new Animation();
            movingAnimation.AddFrame(new Rectangle(entityWidth*2,
                                                   0,
                                                   entityWidth,
                                                   entityHeight), TimeSpan.FromSeconds(animationSpeed));
        }

        public override void HandleSpawn(GameTime gameTime) 
        {
            if(positionVector.Y < groundLevel) 
            {
                MoveUpDown(gameTime, DOWN);
            }
            else 
            {
                InitializeMonster();
            }
        }

        public override void Update(GameTime gameTime, bool buttonPressed = false) 
        {
            //TODO: PlayerManager should probably be a singleton
            float playerX = BaseLevel.playerManager.GetPlayerPosition().X;
            float playerWidth = BaseLevel.playerManager.GetPlayerWidth();
            float entityCenter = (positionVector.X + (entityWidth / 2));
            float playerCenter = (playerX + (playerWidth / 2));

            if(isSpawning && !isDead) {
                HandleSpawn(gameTime);
            }
            else if(!isDead)
            {
                handleState(playerX);

                if (!delayAction)
                {
                    handleAction(gameTime);
                }
                else 
                {
                    //these small offsets (-3 and +3) keeps monster from not being able to decide whether to go left or right
                    if (entityCenter < (playerCenter - 3))
                    {
                        moveLeft = false;
                        moveRight = true;
                    }
                    else if (entityCenter > (playerCenter + 3))
                    {
                        moveLeft = true;
                        moveRight = false;
                    }
                    else {
                        //this will only happen ifplayer isn't moving
                        moveLeft = false;
                        moveRight = false;
                    }

                    HandleMovement(gameTime);
                    HandleDelay(gameTime);
                }
            }

            UpdateEntityBounds();
        }

        void handleAction(GameTime gameTime) 
        {
            if(!isAttacking) {
                
                attackTimeDelayed = attackTimeDelayed.Add(gameTime.ElapsedGameTime);
                if (attackTimeDelayed.TotalSeconds > attackDelayTime)
                {
                    isAttacking = true;
                    attackTimeDelayed = TimeSpan.FromSeconds(0);
                }
                else 
                {
                    HandleShake(gameTime);
                }
            }
            else 
            {
                //can't use moveUpDown because it uses a different speed
                float distanceToMove = (attackSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);

                positionVector.Y += distanceToMove;

                attackSpeed += 35;

                if(positionVector.Y > (ScreenManager.FULL_SCREEN_HEIGHT + entityHeight) )
                {
                    Console.WriteLine("spike monster is dead");
                    isDead = true;

                    if(!didDamagePlayer) {
                        ScoringManager.Instance.HandleMonsterKill(this);
                    }
                }
            }
        }

        void handleState(float playerX) 
        {
            if (delayAction) 
            {
                //TODO: magic number, do I want in XML or nah? just distance from player where idle animation is used
                if ( (positionVector.X < (playerX - 35)) || (positionVector.X > (playerX + 35)) )
                {   
                    currentAnimation = movingAnimation;
                }
                else
                {
                    currentAnimation = baseAnimation;
                }
            }
            else 
            {
                currentAnimation = attackAnimation;
            }
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            //we don't want the monster to act weird when player isn't moving
            //make the base Draw method draw it going in a certain direction
            //then immediately make moveRight false so that movement isnt affected
            if(!moveLeft && !moveRight) {
                moveRight = true;              
                base.Draw(spriteBatch, monsterTexture);
                moveRight = false;
            }
            else 
            {
                base.Draw(spriteBatch, monsterTexture);
            }
        }
    }
}
