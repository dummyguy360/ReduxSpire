flags.do_once_per_save = true;

condition = function()
{
    var _check = false;
    
    with (obj_player)
    {
        if (place_meeting(roomstartx, roomstarty, other))
            _check = true;
    }
    
    return _check;
};

output = function()
{
    with (103984)
    {
        sprite_index = spr_geyserCutscene_Active;
        image_index = 0;
    }
};
