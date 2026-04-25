var player_obj = 370;
hsp = sign(x - player_obj.x) * random_range(10, 18);

if (player_obj.x != x)
    image_xscale = -sign(x - player_obj.x);

vsp = random_range(-10, -18);
alarm[0] = 5;
grav = 0.3;
deadrot = 0;
cigar = 0;
stomped = 0;
drawx = x;
drawy = y;
canrotate = false;
rotatedirection = 0;
rotatevalue = 0;
pal_sprite = -4;
spr_palette = -4;
paletteselect = -4;
col = 0;
depth = -250;
tossCooldown = 10;
