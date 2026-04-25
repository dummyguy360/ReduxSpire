with (other)
{
    if (!cutscene && !global.freezeframe && state != states.backbreaker && state != states.freefall && state != states.freefallprep && state != states.freefallland)
    {
        audio_stop_sound(sfx_bounce1);
        audio_stop_sound(sfx_bounce2);
        audio_stop_sound(sfx_bounce3);
        scr_sound(choose(sfx_bounce1, sfx_bounce2, sfx_bounce3));
        jumpstop = true;
        vsp = -21;
        
        if (state == states.normal || state == states.crouchslide || state == states.crouch || state == states.handstandjump || state == states.machslide)
            state = states.jump;
        
        if (state == states.rupertnormal || state == states.rupertstick || state == states.rupertjump)
        {
            image_index = 0;
            sprite_index = spr_player_skatejumpstart;
            state = states.rupertjump;
        }
        
        if (state == states.climbwall || state == states.climbdownwall || state == states.climbceiling || state == states.machroll)
            state = states.mach2;
        
        if (state == states.jump || state == states.normal)
            sprite_index = spr_player_PZ_fall_outOfControl;
        
        with (other)
        {
            sprite_index = spr_marshmallowSpring_active;
            image_index = 0;
        }
    }
}
