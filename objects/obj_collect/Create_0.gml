collectvanish = false;
collectboxid = noone;
use_palette = true;
in_the_void = false;
depth = 2;
sprite_index = choose(spr_collect1_new, spr_collect2_new, spr_collect3_new, spr_collect4_new, spr_collect5_new);
image_index = irandom(image_number - 1);
image_speed = 0.35;
image_alpha = 1;
escape = false;
global.collected = 0;
global.collectsound = 0;
gotowardsPlayer = false;
movespeed = 0;
col = irandom_range(1, 5);

if (global.levelname == "sucrose")
    sprite_index = spr_collectescape;
