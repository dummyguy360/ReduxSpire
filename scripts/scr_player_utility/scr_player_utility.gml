function do_taunt()
{
    if (key_taunt2)
    {
        taunttimer = 20;
        scr_taunt_storeVariables();
        state = states.backbreaker;
        
        if (supertauntcharged == true && key_up)
        {
            scr_sound(sfx_supertaunt);
            image_index = 0;
            sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4);
        }
        else
        {
            image_index = irandom_range(0, sprite_get_number(spr_player_taunt));
            sprite_index = spr_player_taunt;
        }
        
        instance_create(x, y, obj_taunteffect);
        
        with (obj_baddie)
        {
            if (point_in_rectangle(x, y, obj_player.x - 480, obj_player.y - 270, obj_player.x + 480, obj_player.y + 270))
                tauntBuffer = true;
        }
    }
}

function do_grab()
{
    if (inputBufferSlap > 0 && shotgunAnim == 0)
    {
        inputBufferSlap = 0;
        
        if (!key_up)
        {
            scr_sound(sound_suplex1);
            inputBufferSlap = 0;
            
            if (floatyGrab > 0)
            {
                instance_create(x, y, obj_crazyrunothereffect, 
                {
                    playerID: id
                });
                sprite_index = spr_player_PZ_suplexDash_intro;
            }
            else
                flash = floatyGrab > 0;
            
            vsp = 0;
            instance_create(x, y, obj_jumpdust);
            image_index = 0;
            
            if (state == states.normal || state == states.jump)
                movespeed = 8;
            else
                movespeed = max(movespeed, 5);
            
            state = states.handstandjump;
            
            if (key_down)
            {
                vsp = max(vsp, 6);
                floatyGrab = 0;
                
                if (grounded)
                {
                    grav = 0.5;
                    sprite_index = spr_crouchslipintro;
                    image_index = 0;
                    state = states.machroll;
                    
                    with (instance_create(x, y, obj_jumpdust))
                        image_xscale = other.xscale;
                    
                    movespeed = 11;
                    crouchSlipBuffer = 25;
                    crouchSlipAntiBuffer = 0;
                }
            }
        }
        else if (key_up)
            do_uppercut();
    }
}

function do_uppercut()
{
    inputBufferSlap = 0;
    dir = xscale;
    movespeed = hsp;
    vsp = grounded ? -14 : -10;
    grav = 0;
    state = states.uppercut;
    flash = false;
    sprite_index = spr_player_PZ_uppercut_intro;
    image_index = 0;
    var uppercutpitch = random_range(0.9, 1.1);
    var _a = scr_sound(sfx_uppercut);
    var _a2 = scr_sound(sfx_uppercut2);
    audio_sound_pitch(_a, uppercutpitch);
    audio_sound_pitch(_a2, uppercutpitch);
    
    with (instance_create(x, y, obj_highjumpcloud2))
        sprite_index = spr_highjumpcloud1;
}
