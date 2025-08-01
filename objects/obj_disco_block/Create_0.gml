canCollide = function(arg0 = 370)
{
    return global.dancetimer <= 0 && !place_meeting(x, y, obj_player);
};
