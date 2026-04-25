function state_player_mach2()
{
    windingAnim = min(windingAnim + 1, 2000);
    mach2 = 35;
    hsp = xscale * movespeed;
    move = key_right + key_left;
    move2 = key_right2 + key_left2;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (inputBufferJump > 0 && can_jump)
    {
        if (move != -xscale && key_attack)
        {
            image_index = 0;
            sprite_index = spr_secondjump1;
        }
        
        inputBufferJump = 0;
        scr_sound(sfx_pz_jump);
        vsp = -11;
        instance_create(x, y, obj_jumpdust);
    }
    
    var mach_sprite = (movespeed >= 8) ? spr_mach2 : spr_mach1;
    var mach_jumpsprite = spr_secondjump1;
    
    if (grounded)
    {
        if (machpunchAnim == 0 && sprite_index != mach_sprite && sprite_index != spr_mach3player)
        {
            if (sprite_index != spr_player_PZ_machRoll_getUp)
                sprite_index = mach_sprite;
        }
    }
    
    if (!grounded)
        machpunchAnim = 0;
    
    if (grounded)
    {
        if (slopeCheck(x, y) && hsp != 0 && movespeed > 8)
            player_slopeMomentum(0.1, 0.2);
        
        if (movespeed < 12)
            movespeed += 0.1;
        
        if (abs(hsp) >= 12)
        {
            movespeed = max(movespeed, 12);
            state = states.mach3;
            flash = 1;
            
            if (sprite_index != spr_player_PZ_machRoll_getUp && sprite_index != spr_player_PZ_mach3_hit)
                sprite_index = spr_player_PZ_mach3;
            
            instance_create(x, y, obj_jumpdust, 
            {
                playerID: id
            });
        }
    }
    
    if (movespeed >= 8)
    {
        if (grounded && vsp >= 0)
        {
            if (!key_attack)
            {
                scr_sound(sfx_machstop);
                sprite_index = spr_machslidestart;
                image_index = 0;
                state = states.machslide;
            }
            
            if (move == -xscale)
            {
                scr_sound(sfx_pz_machdrift);
                sprite_index = spr_machslideboost;
                image_index = 0;
                state = states.machslide;
            }
        }
    }
    else if (movespeed < 8 && grounded && vsp >= 0)
    {
        if (!key_attack)
            state = states.normal;
        
        if (move == -xscale)
        {
            xscale *= -1;
            movespeed = 6;
        }
    }
    
    if (key_down && !key_slap2 && !place_meeting(x, y, obj_dashpad))
    {
        flash = 0;
        state = states.machroll;
        instance_create(x, y, obj_jumpdust);
        
        if (!grounded)
        {
            sprite_index = spr_dive;
            scr_sound(sfx_dive);
        }
        
        image_index = 0;
        sprite_index = spr_machroll;
        vsp = 10;
    }
    
    if ((!grounded || slopeCheck(x + xscale, y)) && scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles) && (character == "P" || character == "N"))
    {
        if (!upsideDownJump)
        {
            verticalMovespeed = movespeed;
            
            if (vsp > 0 && place_meeting(x + xscale, y, obj_icyWall))
                verticalMovespeed -= vsp;
            
            grabclimbbuffer = 0;
            state = states.climbwall;
        }
        else
        {
            if (vsp > 0 && place_meeting(x + xscale, y, obj_icyWall))
                verticalMovespeed += vsp;
            
            dir = (move == xscale) ? xscale : -xscale;
            vsp = 0;
            grabclimbbuffer = 0;
            verticalMovespeed = movespeed;
            state = states.climbdownwall;
            xscale *= -1;
        }
    }
    else if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
        var _ledge = 0;
        _ledge -= slope_check_up(x + xscale, y, 32);
        _ledge += slope_check_down(x + xscale, y, 3);
        
        if (_ledge != 0)
            y += _ledge;
        else
        {
            scr_sound(sfx_splat);
            state = states.bump;
            image_index = 0;
            sprite_index = spr_splat;
            movespeed = 0;
        }
    }
    
    if ((!grounded || slopeCheck(x + xscale, y)) && scr_solid(x + xscale, y, true))
    {
    }
    else if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
    }
    
    if (key_shoot2 && global.treat)
    {
        vsp = -5;
        state = states.donut;
        image_index = 0;
        sprite_index = spr_player_throwDonut;
        
        with (instance_create(x, y + 25, obj_donutShitted))
        {
            var _angle = (other.xscale > 0) ? 0 : 180;
            Hmovespeed = lengthdir_x(20, _angle);
            Vmovespeed = lengthdir_y(20, _angle);
            shattedBy = other.id;
        }
    }
    
    if (!instance_exists(obj_dashcloud) && grounded)
    {
        with (instance_create(x, y, obj_dashcloud))
            sprite_index = spr_dashcloud2;
    }
    
    if (!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_player_mach2jump && sprite_index != spr_player_PZ_mach2_longJump_intro && sprite_index != spr_player_PZ_mach2_longJump && sprite_index != spr_player_PZ_bumped && sprite_index != spr_player_PZ_mach3_ceiling_fall)
        sprite_index = mach_jumpsprite;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
        sprite_index = spr_secondjump2;
    
    if (grounded && floor(image_index) == (image_number - 1) && sprite_index == spr_rollgetup)
        sprite_index = spr_mach2;
    
    if (sprite_index == spr_player_PZ_mach3_ceiling_fall && animation_end())
        image_index = 11;
    
    do_taunt();
    do_grab();
    
    if (animation_end() && sprite_index == spr_player_PZ_mach2_longJump_intro)
        sprite_index = spr_player_PZ_mach2_longJump;
    
    if (sprite_index == spr_player_PZ_machRoll_getUp || sprite_index == spr_player_PZ_mach2_longJump_intro || sprite_index == spr_player_PZ_mach2_longJump)
        image_speed = 0.4;
    else
        image_speed = abs(movespeed) / 15;
    
    if (grounded)
    {
        upsideDownJump = false;
        floatyGrab = 18;
    }
}
