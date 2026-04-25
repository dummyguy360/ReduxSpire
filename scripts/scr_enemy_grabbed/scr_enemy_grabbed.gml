function scr_enemy_grabbed()
{
    movespeed = 0;
    sprite_index = grabbedspr;
    image_speed = 0.35;
    var player_id = 370;
    image_xscale = -player_id.xscale;
    stunned = 200;
    player_id.baddiegrabbedID = id;
    
    if (player_id.state == states.grab)
    {
        var walk_bobbingy = 0;
        var walk_bobbingx = 0;
        
        if (player_id.sprite_index == spr_player_PZ_hauling_walk)
        {
            var yoffsets = [0, 2, 3, 9, 12, 0, -7, -6, -5, -3, 6, 5, 2];
            var xoffsets = [-4, -4, -3, -3, -2, -7, -10, -9, -8, -6, -3, -3, -3];
            walk_bobbingy = yoffsets[floor(player_id.image_index)];
            walk_bobbingx = xoffsets[floor(player_id.image_index)] * player_id.xscale;
        }
        
        var _yoff = -56 + walk_bobbingy;
        
        if (player_id.sprite_index == spr_player_PZ_hauling_intro)
        {
            var yoffsets = [-13, -35, -60, -55, -56];
            _yoff = yoffsets[floor(player_id.image_index)];
        }
        
        if (player_id.sprite_index == spr_player_PZ_hauling_land)
        {
            var yoffsets = [-31, -49, -53, -55];
            _yoff = yoffsets[floor(player_id.image_index)];
        }
        
        if (player_id.sprite_index == spr_player_PZ_hauling_jump)
        {
            var yoffsets = [-22, -41, -62, -58];
            _yoff = yoffsets[floor(player_id.image_index)];
        }
        
        if (player_id.sprite_index == spr_player_PZ_hauling_fall)
        {
            var yoffsets = [-58, -58, -58];
            _yoff = yoffsets[floor(player_id.image_index)];
        }
        
        y = player_id.y + _yoff;
        x = player_id.x + walk_bobbingx;
        image_xscale = -player_id.xscale;
    }
    
    if (player_id.state == states.charge)
    {
        x = player_id.x;
        
        switch (floor(player_id.image_index))
        {
            case 0:
            case 8:
                x += (player_id.xscale * 10);
                break;
            
            case 1:
            case 7:
                x += (player_id.xscale * 10);
                break;
            
            case 3:
            case 5:
                x += (player_id.xscale * -10);
                break;
            
            case 4:
                x += (player_id.xscale * -20);
                break;
        }
        
        y = player_id.y;
    }
    
    image_yscale = (player_id.state == states.superslam) ? -1 : 1;
    
    if (player_id.state == states.superslam)
    {
        if (player_id.sprite_index != player_id.spr_piledriverland)
        {
            x = player_id.x - (player_id.xscale * 10);
            y = player_id.y - 13;
        }
        else
        {
            x = player_id.x;
            y = player_id.y + 47;
        }
    }
    
    if (player_id.state == states.finishingblow && state != states.climbwall)
    {
        var try_x = 60;
        x = player_id.x + (try_x * player_id.xscale);
        y = player_id.y;
        hsp = 0;
        vsp = 0;
    }
    
    with (obj_player)
    {
        if (!global.freezeframe && state != states.grab && state != states.finishingblow && state != states.charge && state != states.superslam)
        {
            other.x = x;
            other.y = y;
            other.state = states.cheesepep;
            other.image_index = 0;
        }
    }
}
