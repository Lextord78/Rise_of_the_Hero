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
			currentY += mode1spd + random_range(0,1) ;
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
		
if collision_circle(x,y,20,Obj_Arrow,false, true)
	{
		currentHp -= 1
		var dArrow = instance_nearest(x,y,Obj_Arrow)
		
		instance_destroy(dArrow)
	}	
	
	if currentHp <= 0
		{
			instance_destroy(self)	
		}
		
		