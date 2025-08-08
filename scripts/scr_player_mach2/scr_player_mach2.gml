function state_player_mach2()
{
    if (windingAnim < 2000)
        windingAnim++;
    
    mach2 = 35;
    hsp = xscale * movespeed;
    move = key_right + key_left;
    move2 = key_right2 + key_left2;
    crouchslideAnim = 1;
    // Jump.
    if (key_jump)
        input_buffer_jump = 0;
    // Jumpstop.
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = 1;
    }
    // Jumping.
    if (character == "P")
    {
        if (grounded && vsp > 0)
            jumpstop = 0;
        
        if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && key_attack)
        {
            image_index = 0;
            sprite_index = spr_secondjump1;
            
            if (!playedjumpsound)
            {
                scr_sound(sound_jump);
                playedjumpsound = 1;
            }
            
            vsp = -11;
        }
    }
    else if (character == "N")
    {
        if (key_jump && grounded)
        {
            state = states.twirl;
            sprite_index = spr_pizzano_twirl;
            vsp = -12;
        }
    }
	
    // Animations.
    var mach_sprite = (movespeed >= 8) ? spr_mach2 : spr_mach1;
    if (grounded)
    {
        if (machpunchAnim == 0 && sprite_index != mach_sprite && sprite_index != spr_mach3player)
        {
            if (sprite_index != spr_suplexdash && sprite_index != spr_rollgetup)
                sprite_index = mach_sprite;
        }
        
        if (machpunchAnim == 1)
        {
            if (punch == 0 && sprite_index != spr_machpunch1)
            {
                sprite_index = spr_machpunch1;
                image_index = 0;
            }
            
            if (punch == 1 && sprite_index != spr_machpunch2)
            {
                sprite_index = spr_machpunch2;
                image_index = 0;
            }
            
            if (animation_end())
            {
                punch = !punch;
                machpunchAnim = 0;
            }
        }
    }
    
    if (!grounded)
        machpunchAnim = 0;
    // Movement and Mach 3
    if (grounded)
    {
        if (slopeCheck(x, y) && hsp != 0 && movespeed > 8)
            player_slopeMomentum(0.1, 0.2);
        
        if (movespeed < 12)
            movespeed += 0.1;
        
        if (abs(hsp) >= 12 && sprite_index != spr_suplexdash)// Mach 3.
        {
            machhitAnim = 0;
            trace("Jerked off");
            
            if (movespeed < 12)
                movespeed = 12;
            
            state = states.mach3;
            flash = 1;
            
            if (sprite_index != spr_rollgetup)
                sprite_index = spr_mach3player;
            
            instance_create(x, y, obj_jumpdust, { playerID: id });
        }
    }
    // Machslide/Drifting.
    if (movespeed >= 8)// Mach 2
    {
		// Machslide.
        if (!key_attack && grounded)
        {
            scr_sound(sound_break);
            sprite_index = spr_machslidestart;
            image_index = 0;
            state = states.machslide;
        }
        // Drifting. 
        if (move == -xscale && grounded)
        {
            scr_sound(sound_maximumspeedstop);
            sprite_index = spr_machslideboost;
            image_index = 0;
            state = states.machslide;
        }
    }
    else if (movespeed < 8)// Mach 1
    {
		// Machslide.
        if (!key_attack && grounded)
            state = states.normal;
        // Drifting. 
        if (move == -xscale && grounded)
        {
            xscale *= -1;
            movespeed = 6;
        }
    }
	
    // Machroll.
    if (key_down && !place_meeting(x, y, obj_dashpad))
    {
        flash = 0;
        state = states.machroll;
        
        if (!grounded)
            sprite_index = spr_dive;
        
        image_index = 0;
        sprite_index = spr_machroll;
        vsp = 10;
    }
    
	// Wallrun.
    if (((!grounded || slopeCheck(x + xscale, y)) && scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles)) && (character == "P" || character == "N"))
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
            if (movespeed < 8)// Mach 1
                state = states.normal;
            else
            {
				// Mach 2
                state = states.bump;
                image_index = 0;
                sprite_index = spr_splat;
            }
            
            movespeed = 0;
        }
    }
    
	// Donut Shoot.
    if (key_shoot2 && global.treat)
    {
        vsp = -5;
        state = states.donut;
        image_index = 0;
        sprite_index = spr_player_throwDonut;
        
        with (instance_create(x, y + 16, obj_donutThrowable))
        {
            image_xscale = other.xscale;
            
            if (other.key_up)
            {
                movespeed = 7;
                vsp = -14;
            }
            else
            {
                movespeed = 8;
                vsp = -5;
            }
            
            movespeed += other.movespeed;
        }
    }
    
	// Dash Cloud.
    if (!instance_exists(dashCloudID) && grounded)
    {
        with (instance_create(x, y, obj_dashcloud, { playerID: id }))
        {
            playerID.dashCloudID = id;
            
            if (playerID.movespeed >= 8)
                sprite_index = spr_dashcloud2;
            else
                sprite_index = spr_dashcloud;
        }
    }
    
    if ((!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump) && sprite_index != spr_null && sprite_index != spr_player_bump)
        sprite_index = spr_secondjump1;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
        sprite_index = spr_secondjump2;
    
    if (grounded && (floor(image_index) == (image_number - 1) && sprite_index == spr_rollgetup))
        sprite_index = spr_mach2;
    
    do_taunt();
    do_grab();
    
    if (sprite_index == spr_rollgetup || sprite_index == spr_suplexdash)
        image_speed = 0.4;
    else
        image_speed = abs(movespeed) / 15;
    
    if (grounded)
        upsideDownJump = false;
    
    if (character == "N" && key_up && key_slap2 && charged)
    {
        flash = 1;
        alarm[0] = 240;
        image_index = 0;
        state = states.Sjump;
        sprite_index = spr_pizzano_sjumpprep;
    }
}
