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
init_health(10);