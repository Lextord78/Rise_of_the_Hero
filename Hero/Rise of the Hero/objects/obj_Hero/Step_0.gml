//image_blend = color
if hasSword
{
	if Obj_Sword.fistTimer <= 0
	{
		canMove = true
	}else{
		canMove = false
	}
}else{
	canMove = true
}

if canMove{
		if keyboard_check(ord("D"))
		{
			playerRight = true
			
			playerUp = false
			playerDown = false
			playerLeft = false
			
			x += spd
		}
		if keyboard_check(ord("A"))
		{
			playerLeft = true
			
			playerUp = false
			playerDown = false
			playerRight = false
			
			x -= spd
		}
		if keyboard_check(ord("S"))
		{
			playerDown = true
			
			playerUp = false
			playerLeft = false
			playerRight = false
			
			y += spd
		}
		if keyboard_check(ord("W"))
		{
			playerUp = true
			
			playerDown = false
			playerLeft = false
			playerRight = false
			
			y -= spd
		}
}
if collision_circle(x,y,12,Obj_SwordPic,false,true){
	
	wSword = instance_nearest(x,y,Obj_SwordPic);
	instance_destroy(wSword);
	hasSword = true;
	instance_create_depth(x,y,0,Obj_Sword);

}

if collision_circle(x,y,12,Obj_BowPic,false,true)
	{
		wBow = instance_nearest(x,y,Obj_BowPic);
		instance_destroy(wBow);
		hasBow = true;
		arrows += 20
		instance_create_depth(x,y,0,Obj_Bow);
	}
	
	if playerFace
	{
		if playerUp = true
		{
			image_index = 0
			arrowvspd = -arrowspd
			arrowhspd = 0
			
		}
		if playerDown = true
		{
			image_index = 1
			arrowvspd = +arrowspd
			arrowhspd = 0
			
			
		}
		if playerLeft = true
		{
			image_index = 2 // v = y h = x
			arrowvspd = 0
			arrowhspd = -arrowspd
			
		}
		if playerRight = true
		{
			image_index = 3
			arrowvspd = 0
			arrowhspd = +arrowspd
		}
	}

//Arrow shooting
		//This will check if the player has the bow and arrow
		if hasBow = true
		{
			if arrows > 0{
				if keyboard_check_pressed(vk_space){
					audio_play_sound(snd_arrow,0,false)
					instance_create_depth(x,y,0,Obj_Arrow)
					var newarrow
					newarrow = instance_nearest(x,y,Obj_Arrow)
					newarrow.hspd = arrowhspd
					newarrow.vspd = arrowvspd
					
					
					arrows -= 1
				}
			
			}
		}
			//noBow = false player can not use arrow
			if hasBow = false
			{
				//arrows = 0
		}else{
		//noArrow = false player can not use bow	

		}
			



if collision_circle(x,y,28,Obj_enemy,false,true)
{
	var nearEnemy = instance_nearest(x,y,Obj_enemy)
	instance_destroy(nearEnemy)
	currentHp -= 1.5 // Hero health
}

if currentHp <= 0{
	instance_destroy(self)
}

if Obj_Manager.amountEnemy <= 0{
	if collision_circle(x,y,30,Obj_DoorOpen,false,true){
		room_goto(Obj_DoorOpen.goToRoom)
	}
}

/*if place_meeting(x, y, Obj_enemy and take_hit == 0)
{
	take_hit = 15
	if(image_xscale == 1) hit_dir = 1
	else hit_dir = -1
	
	if(image_yscale == -1) hit_dir = -1
	else hit_dir = 1
}


if (take_hit > 0)
{
	if(hit_dir == 1) hspd = -5
	else hspd = 5
	
	if(hit_dir == 1) vspd = 5
	else vspd = -5
	
	take_hit--
	take_hit++
} */

///Collision checks

//Set up vars
var a,xoff,yoff,mag;

a = point_direction(x, y, other.x, other.y);    //Get the direction from the colliding object
xoff = lengthdir_x(1, a);                       //Get the offset vector
yoff = lengthdir_y(1, a);
om = other.mass / mass;                         //start the fake "physics mass" calculations
mm = mass / other.mass;
mag = sqrt((om * om) + (mm * mm));
om /= mag;
mm /= mag;

//Move out of collision
while (place_meeting(x, y, other.id))
{
x -= xoff * om; //Move the instance out of collision
y -= yoff * om;
other.x += xoff * mm; //Move the other instance out of the collision
other.y += yoff * mm;
}