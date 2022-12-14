xStart = x;
yStart = y;

xEnd = xStart + 150;
yEnd = yStart + 150;

startEnd = false;

mode = 0;

mode0spd = 0.005;
mode1spd = 1;
hspd = 5
vspd = 0

firstTimeModeSwitch = false;

heroDistance = 0;
playerDistanceMIn = 300;

currentX = x;
currentY = y;

lerpPos = 0;



rateFire = 0

arrowspd = 3

can_shoot = 0

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

make_health(10);