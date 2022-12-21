function draw_Health(currentHp, maxHp)
{
draw_healthbar(
	x,
	y - 9, // width of the helth bar
	x + sprite_width,
	y - 1, // same thig
	100 * (currentHp / maxHp),
	c_black,
	c_red,
	c_green,
	0,
	true,
	false
	) 
}