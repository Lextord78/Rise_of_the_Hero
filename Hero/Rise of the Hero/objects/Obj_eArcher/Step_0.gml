if can_shoot = 0 {
	rateFire += 1;
	if rateFire >= 1 /* room_speed*/ {
		rateFire = 0;
		can_shoot = 1;
	}
}
//if instance_exists(obj_Hero) {
	if distance_to_object(obj_Hero) < 150 {
		if collision_circle(x,y,obj_Hero,obj_Hero.y,false, true) {
			if can_shoot = 1 {
				can_shoot = 0;
				var newarrow
					newarrow = instance_nearest(x,y,obj_Hero)
					newarrow.hspd = spd
					newarrow.vspd = spd
				
				var newArrow = instance_create_depth(x,y,20,Obj_Arrow);
				newArrow = point_direction(Obj_Arrow.x,Obj_Arrow.y,obj_Hero.x,obj_Hero.y);
				arrowspd = 3;
			}
		}
	}
//}

x =	currentX;
	y = currentY;
heroDistance = distance_to_object(obj_Hero)

if firstTimeModeSwitch = false
	{
		if playerDistanceMIn <= playerDistanceMIn
		{
			if mode = 0
			{
				mode = 1;
				firstTimeModeSwitch = true;
			}
		}
		if playerDistanceMIn > playerDistanceMIn
			{
				if mode = 1
				{
					mode = 0;
					firstTimeModeSwitch = true;
				}
			}
	}
	
if mode = 0
	{
		if !startEnd
		{
			lerpPos += mode0spd;
			if lerpPos >= 1
			{
				startEnd = true;
			}
		}else{
			lerpPos -= mode0spd;
			if lerpPos <= 0
			{
				startEnd = false;
			}
		}
		
		currentX = lerp(xEnd, xStart,lerpPos);
		currentY = lerp(yEnd,yStart,lerpPos);
	}
// chases the player on the x axis	
if mode = 1
	{
		if obj_Hero.x > x
		{
			currentX += mode1spd;
		}
		
		if obj_Hero.x < x
		{
			currentX -= mode1spd;
		}
	}
// chases the player on the y axis
if mode = 1
	{
		if obj_Hero.y > y
		{
			currentY += mode1spd;
		}
		
		if obj_Hero.y < y
		{
			currentY -= mode1spd;
		}
	}

if firstTimeModeSwitch
	{
		if mode = 0
		{
			xStart = x;
			yStart = y;
			
			xEnd = xStart + 150;
			yEnd = yStart + 150;
			
			startEnd = false
			lerpPos = 1;
			
			currentX = x;
			}else{
				currentY -= mode1spd;
			}
		}
		
		if firstTimeModeSwitch
		{
			if mode = 0
			{
				xStart = x;
				yStart = y;
				
				xEnd = xStart + 150;
				yEnd = yStart + 150
				
				startEnd = false;
				lerpPos = 1;
				
				currentX = x;
				currentY = y;
				}else{
					currentX = x;
					currentY = y;
				}
		}
		
		firstTimeModeSwitch = false;
		
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