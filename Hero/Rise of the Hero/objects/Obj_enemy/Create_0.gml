/// @description Constructor

xStart = x;
yStart = y;

xEnd = xStart + 150;
yEnd = yStart + 150;

startEnd = false;

mode = 0;

mode0spd = random_range(0.005,0.02);
mode1spd = random_range(1,2);

firstTimeModeSwitch = false;

heroDistance = 0;
playerDistanceMIn = 300;

currentX = x;
currentY = y;

lerpPos = 0;

init_health(10);