if (instance_exists(ID))
{
    x = ID.x;
    y = ID.y;
    image_xscale = ID.image_xscale;
    image_index = ID.image_index;
    var _x = x + (sign(image_xscale) * 150);
    
    if (place_meeting(x, y, obj_player) && ID.alarm[3] < 0 && ID.state != states.cheeseball && !ID.alarmed)
        ID.alarm[3] = 60;
}
else
{
    instance_destroy();
}
