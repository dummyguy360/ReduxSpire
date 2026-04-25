var cam_x = camx;
var cam_y = camy;
depth = obj_camera.depth + 1;
image_speed = 0;
image_index = 0;
choosed = false;
var originalDistance = point_distance(cam_x, cam_y, xstart, ystart);
var originalDirection = point_direction(cam_x, cam_y, xstart, ystart);
drawx = lengthdir_x(originalDistance, originalDirection);
drawy = lengthdir_y(originalDistance, originalDirection);
drawxscale = 1;
drawyscale = 1;
biggening = true;
targetx = 121;
targety = 88 + obj_camera.DrawY;

if (choosed == false)
{
    playerID = obj_player;
    sprite_index = choose(spr_collect1_new, spr_collect2_new, spr_collect3_new, spr_collect4_new, spr_collect5_new);
}

col = irandom_range(1, 5);
