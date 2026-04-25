if (global.freezeframe)
    exit;

if (!instance_exists(hookStopID))
{
    show_debug_message("Hook didn't find stop");
    instance_destroy();
}

switch (state)
{
    case HookState.idle:
        visible = true;
        break;
    
    case HookState.goback:
        var _target_dir = point_direction(x, y, xstart, ystart);
        var _point_distance = min(point_distance(x, y, xstart, ystart), gobackspeed);
        x += lengthdir_x(_point_distance, _target_dir);
        y += lengthdir_y(_point_distance, _target_dir);
        
        if (point_distance(x, y, xstart, ystart) <= 9)
        {
            x = xstart;
            y = ystart;
            state = HookState.idle;
        }
        
        visible = true;
        break;
    
    case HookState.carrying:
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
                
                if (sprite_index == spr_player_skateidle || sprite_index == spr_player_skatewalljumpstart || sprite_index == spr_player_skateland || sprite_index == spr_player_skatejumpstart || sprite_index == spr_player_skatedive || sprite_index == spr_player_skatedoublejumpstart || sprite_index == spr_player_skatejump || sprite_index == spr_player_skatewallrun || sprite_index == spr_player_skateslowwalk || sprite_index == spr_player_skatespin || sprite_index == spr_player_skatedrift || sprite_index == spr_player_skatecrouch || sprite_index == spr_player_skatefall || sprite_index == spr_player_skatedoublejump)
                {
                    sprite_index = spr_player_PZ_frostburn_hook;
                }
                else if (!(sprite_index == spr_player_skateidle || sprite_index == spr_player_skatewalljumpstart || sprite_index == spr_player_skateland || sprite_index == spr_player_skatejumpstart || sprite_index == spr_player_skatedive || sprite_index == spr_player_skatedoublejumpstart || sprite_index == spr_player_skatejump || sprite_index == spr_player_skatewallrun || sprite_index == spr_player_skateslowwalk || sprite_index == spr_player_skatespin || sprite_index == spr_player_skatedrift || sprite_index == spr_player_skatecrouch || sprite_index == spr_player_skatefall || sprite_index == spr_player_skatedoublejump) && sprite_index != spr_player_PZ_frostburn_hook)
                {
                    if (sprite_index != spr_player_PZ_hookhoriz_start && sprite_index != spr_player_PZ_hookhoriz)
                        image_index = 0;
                    
                    if (sprite_index != spr_player_PZ_hookhoriz)
                        sprite_index = spr_player_PZ_hookhoriz_start;
                }
            }
        }
        
        visible = false;
        
        if (point_distance(x, y, hookStopID.x, hookStopID.y) <= movespeed)
        {
            x = hookStopID.x;
            y = hookStopID.y;
            state = HookState.goback;
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

if (bbox_in_camera_new(self, view_camera[0]) && !audio_is_playing(sfx_propeller))
    scr_sound(sfx_propeller);
