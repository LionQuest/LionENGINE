//INIT VARIABLES
hSpeed = 0;
vSpeed = 0;

state = 0;
activate = noone;

lockedDirection = 0;
image_speed = 0;
localFrame = 0;

hit = false;
colliding_inst_id = noone;

//Frames count vars
knocbackFrames = 0;
immunFrames = -1;
attackFrames = 0;
distanceDodge = 20;

//Blink shader vars 
blinkAlpha = 0;
blinkColor = c_white;

//Stats
coins = 0;
maxHp = 12;
hp = maxHp;
spd = 0;

//Sprite vars
sprIdle = sPlayerIdle;
sprWalk = sPlayerWalk;
sprDodge = sPlayerDodge;
sprDodgeB = sPlayerBackwardsDodge;
sprHurt = sPlayerHurt;
sprKnocback = sPlayerKnocback;
sprAttack = sPlayerAttack;

