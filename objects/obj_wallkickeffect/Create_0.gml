playerid = 370;
image_speed = 0;
image_alpha = 1;
sprite_index = obj_player.sprite_index;
randomize();
color = choose(#010000, #020000);
realcol = 
{
    r: 135,
    g: 44,
    b: 210,
    r2: 32,
    g2: 2,
    b2: 57
};
blink_time = 3;
alarm[1] = blink_time;
alarm[0] = 13;
gonealpha = 0.85;
vanish = 0;
draw_angle = obj_player.draw_angle;
