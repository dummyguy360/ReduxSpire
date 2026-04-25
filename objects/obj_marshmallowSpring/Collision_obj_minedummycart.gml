with (other)
{
    vsp = -21;
    audio_stop_sound(sfx_bounce1);
    audio_stop_sound(sfx_bounce2);
    audio_stop_sound(sfx_bounce3);
    scr_sound(choose(sfx_bounce1, sfx_bounce2, sfx_bounce3));
    
    with (other)
    {
        sprite_index = spr_marshmallowSpring_active;
        image_index = 0;
    }
}
