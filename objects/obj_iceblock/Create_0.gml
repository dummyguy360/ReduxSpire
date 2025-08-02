enum iceType 
{
	normal,
	heavy,
	fragile,
}

scr_collision_init();
image_speed = 0;
color_index = 0;
color = 
{ 
	light :	#ffa4a4, 
	dark :#cc5b5b 
};
invtime = 0;
grounded = false;
flash = false;
state = states.frozen;
substate = 0;
hsp = 0;
vsp = 0;
thrown = 0;
stunned = 0;
movespeed = 0;
grav = 0.5;
grav2 = 0.5;
xscale = 1;
touching = 0;
contentsurf = -4;
contentspr = -4;
hp = 0;
setfordeath = 0;
grabbedspr = sprite_index;
frozenstate = state;
frozenspriteindex = sprite_index;
frozenimageindex = image_index;
frozenimagespeed = image_speed;
frozenmovespeed = movespeed;
frozengrav = grav;
frozenhsp = hsp;
frozenvsp = vsp;
setfordeath = false;
