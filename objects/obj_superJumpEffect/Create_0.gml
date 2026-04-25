image_speed = 0.5;
depth = -30;
x = obj_player.x;
y = obj_player.y - 20;

if (obj_player.sprite_index == spr_player_PZ_superSpring)
    y = obj_player.y + 7;

image_xscale = obj_player.image_xscale;

if (obj_player.state == states.climbwall)
    sprite_index = spr_wallChargeEffect;
else
    sprite_index = spr_superJumpEffect;
