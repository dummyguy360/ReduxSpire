canCollide = function(arg0 = obj_player)
{
    return !place_meeting(x, y, arg0);
};

event_inherited();
scr_collision_init();
grav = 0.5;
dhsp = 0;
dvsp = 0;
spinspeed = 0;
