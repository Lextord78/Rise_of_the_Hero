image_xscale = 4.5
image_yscale = 4.5

/// @description Constructor

xStart = x;
yStart = y;

xEnd = xStart + 150;
yEnd = yStart + 150;

startEnd = false;

mode = 0;

mode0spd = random_range(0.005,0.02);
mode1spd = random_range(1,4);

firstTimeModeSwitch = false;

heroDistance = 0;
playerDistanceMIn = 300;

currentX = x;
currentY = y;

lerpPos = 0;

targerBuffer = 64
randomTargetX = random_range(-targerBuffer, targerBuffer)
randomTargetY = random_range(-targerBuffer, targerBuffer)
make_health(10);

kBStart = false

kBStartX = 0
kBStartY = 0

knockBackX = 0
knockBackY = 0

hasHit = false
knockBackAmount = 64

if y <= 142{ // Y-axis wall up
	y = 142
}
if y >= 750 // Y-axis wall down
{
	y = 750
}

if x <= 40 // X-axis wall left
{
	x = 40
}

if x >= 1321 // x-axis wall right
{
	x = 1321
}