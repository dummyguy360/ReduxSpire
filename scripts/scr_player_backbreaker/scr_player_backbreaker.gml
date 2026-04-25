function state_player_backbreaker()
{
    if (sprite_index != spr_player_machfreefall)
    {
        hsp = 0;
        movespeed = 0;
    }
    else
        hsp = xscale * movespeed;
    
    landAnim = 0;
    
    if (sprite_index == spr_taunt)
    {
        taunttimer--;
        vsp = 0;
    }
    
    if (sprite_index == spr_player_machfreefall && place_meeting(x, y + 1, obj_solid))
    {
        state = states.machslide;
        sprite_index = spr_player_crouchslide;
    }
    // Taunt.
    if (sprite_index == spr_taunt)
    {
        if (taunttimer >= 5 && supertauntcharged == true && key_up)
        {
            image_index = 0;
            sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4);
            scr_sound(sfx_supertaunt);
        }
        
        if (!instance_exists(parryid))
        {
            with (instance_create(x, y, obj_parryhitbox))
            {
                other.parryid = id;
                image_xscale = other.xscale;
            }
        }
    }
    
    if (taunttimer <= 0 && sprite_index == spr_taunt)
        scr_taunt_setVariables();
    // Supertaunt.
    
    if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
    {
        vsp = 0;
        hsp = 0;
        supertauntbuffer = 100;
        
        if (supertauntcharged == true)
        {
            instance_create(x, y, obj_supertaunthitbox);
            
            for (var i = 0; i < 9; i++)
            {
                var h_sign = (i % 3) - 1;
                var v_sign = floor(i / 3) - 1;
                
                if (!(h_sign == 0 && v_sign == 0))
                {
                    with (instance_create(x, y, obj_tauntaftereffectspawner))
                    {
                        hspeed = h_sign * 20;
                        vspeed = v_sign * 20;
                    }
                }
            }
            
            if (!instance_exists(parryid))
            {
                with (instance_create(x, y, obj_parryhitbox))
                {
                    other.parryid = id;
                    image_xscale = other.xscale;
                }
            }
            
            scr_sleep();
            
            with (obj_camera)
            {
                scr_sleep();
                shake_mag = 10;
                shake_mag_acc = 30 / room_speed;
            }
            
            supercharge = 0;
            supertauntcharged = false;
        }
        
        if (animation_end())
        {
            supercharge = 0;
            supertauntbuffer = 0;
            supertauntcharged = false;
            scr_taunt_setVariables();
        }
    }
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
        state = states.normal;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && (place_meeting(x, y, obj_exitgate) || room != timesuproom))
        state = states.normal;
    
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory))
        state = states.normal;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_bossintro)
        state = states.normal;
    
    if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
        image_speed = 0.4;
    else if (sprite_index == spr_taunt)
        image_speed = 0;
    else
        image_speed = 0.35;
    
    if (key_down2)
    {
        paletteselect++;
        
        if (paletteselect >= array_length(my_palettes))
            paletteselect = 0;
        
        if (buffer_exists(my_pal_buffer))
            buffer_delete(my_pal_buffer);
        
        taunttimer = 20;
    }
}
