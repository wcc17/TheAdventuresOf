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
        public bool isAttacking = false; 

        Animation attackAnimation;
        Animation movingAnimation;

        public void SetSpikeMonsterData(SpikeMonster spikeMonster) 
        {
            entityTag = spikeMonster.entityTag;
            speed = spikeMonster.speed;
            spawnSpeed = spikeMonster.spawnSpeed;
            deathSpeed = spikeMonster.deathSpeed;
            frameCount = spikeMonster.frameCount;
            moveDistanceLimit = spikeMonster.moveDistanceLimit;
            actionDelayTime = spikeMonster.actionDelayTime;
            rotationSpeed = spikeMonster.rotationSpeed;
            attackSpeed = spikeMonster.attackSpeed;
            damage = spikeMonster.damage;
            fadeSpeed = spikeMonster.fadeSpeed;

            monsterTexture = AssetManager.Instance.spikeMonsterTexture;
        }

        public override void InitializeSpawn()
        {
            base.InitializeSpawn();

            //moveLeft or moveRight will only both be false if SPAWN_TOP is used
            if(spawnType == SPAWN_TOP) {
                moveLeft = true; 
            } else {
                //if spawning from left or right, spike monster should be facing left or right
                currentAnimation = movingAnimation;
            }

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

        public override void Update(GameTime gameTime, bool buttonPressed = false) 
        {
            float playerX = PlayerManager.Instance.GetPlayerPosition().X;
            float playerWidth = PlayerManager.Instance.GetPlayerWidth();
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
                    //TODO: error correction offsets? magic number, put in XML
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

                if(positionVector.Y > (ScreenManager.VIRTUAL_SCREEN_HEIGHT + entityHeight) )
                {
                    Logger.WriteToConsole("spike monster is dead");
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
                //TODO: magic number, want in XML? just distance from player where idle animation is used
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
