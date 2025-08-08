function state_player_machtumble()
{
    static bufferslap = 0;
    static attack_afterimagetimer = 6;
    
    hsp = xscale * movespeed;
    
    if (movespeed < 11 && grounded)
        movespeed += 0.5;
    else if (movespeed < 11 && !grounded)
        movespeed = 11;
    
    if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
		#region Bump Wall
        scr_sound(sound_maximumspeedland);
        
        with (obj_camera)
        {
            shake_mag = 20;
            shake_mag_acc = 40 / room_speed;
        }
        
        image_speed = 0.35;
        
        with (obj_baddie)
        {
            if (bbox_in_camera(view_camera[0]) && grounded)
            {
                stun = 1;
                alarm[0] = 200;
                ministun = 0;
                vsp = -5;
                hsp = 0;
            }
        }
        
        flash = 0;
        combo = 0;
        sprite_index = spr_player_mach3hitwall;
        state = states.bump;
        hsp = -2.5 * xscale;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
		#endregion
    }
    
    if (key_slap2)
        bufferslap = 0;
    else if (bufferslap < 10)
        bufferslap++;
    
    if (key_down)
    {
        if (grounded)
        {
            grav = 0.5;
            sprite_index = spr_crouchslip;
            machhitAnim = 0;
            state = states.machroll;
            
            if (audio_is_playing(sound_suplex1))
                audio_stop_sound(sound_suplex1);
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
            
            movespeed = 12;
            crouchslipbuffer = 25;
        }
    }
    
	//Return to
    if (animation_end())
    {
        if (key_attack)
        {
            if (mach2 < 100)
            {
                state = states.mach2;
                sprite_index = spr_player_mach2;
            }
            
            if (mach2 >= 100)
            {
                state = states.mach3;
                sprite_index = spr_mach3player;
            }
        }
        else if (!key_attack && bufferslap >= 8)
        {
            image_speed = 0.35;
            state = states.normal;
            grav = 0.5;
        }
        else if (!key_attack && bufferslap < 8)
        {
            sprite_index = spr_player_machtumble;
            image_index = 0;
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
        }
    }
    
    image_speed = 0.35;
    
	//attack after effect
    if (attack_afterimagetimer > 0)
        attack_afterimagetimer--;
    
    if (attack_afterimagetimer <= 0 && vsp <= 0)
    {
        with (instance_create(x, y, obj_attack_aftereffect))
            playerID = other.id;
        
        attack_afterimagetimer = 6;
    }
}
