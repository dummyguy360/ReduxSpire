audio_emitter_position(hookSoundEmitter, x, y, 0);

if (global.freezeframe)
    exit;

if (!instance_exists(hookStopID))
{
    show_debug_message("Hook didn't find stop");
    instance_destroy();
}

switch (state)
{
    case states.frozen:
        visible = true;
        break;
    
    case states.normal:
        var _target_dir = point_direction(x, y, xstart, ystart);
        var _point_distance = min(point_distance(x, y, xstart, ystart), gobackspeed);
        x += lengthdir_x(_point_distance, _target_dir);
        y += lengthdir_y(_point_distance, _target_dir);
        
        if (point_distance(x, y, xstart, ystart) <= 9)
        {
            x = xstart;
            y = ystart;
            state = states.frozen;
        }
        
        visible = true;
        break;
    
    case states.titlescreen:
        var _target_dir = point_direction(x, y, hookStopID.x, hookStopID.y);
        xprevious = x;
        yprevious = y;
        x += lengthdir_x(movespeed, _target_dir);
        y += lengthdir_y(movespeed, _target_dir);
        var _hsp = x - xprevious;
        var _vsp = y - yprevious;
        
        with (playerID)
        {
            if (state == states.hooks)
            {
                hsp = 0;
                vsp = 0;
                x = other.x;
                y = other.y - 14;
                xscale = sign(other.image_xscale);
                
                if (abs(_hsp) >= abs(_vsp))
                    sprite_index = spr_player_hookhoriz;
                else
                    sprite_index = spr_player_hookvert;
            }
        }
        
        visible = false;
        
        if (point_distance(x, y, hookStopID.x, hookStopID.y) <= movespeed)
        {
            x = hookStopID.x;
            y = hookStopID.y;
            state = states.normal;
            visible = true;
            
            with (playerID)
            {
                x = other.hookStopID.x;
                y = other.hookStopID.y - 14;
                
                if (state == states.hooks)
                    scr_taunt_setVariables();
            }
        }
        
        break;
}
