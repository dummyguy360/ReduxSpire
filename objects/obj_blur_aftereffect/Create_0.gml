playerid = 370;
image_alpha = 0.85;
image_xscale = playerid.xscale;
image_yscale = playerid.yscale;
image_speed = 0;
image_angle = playerid.draw_angle;
state = 0;
key_shoot = 0;

if (playerid == 370)
{
    state = playerid.state;
    key_shoot = playerid.key_shoot;
}
