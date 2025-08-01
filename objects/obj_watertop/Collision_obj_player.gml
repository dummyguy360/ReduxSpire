with (other)
{
    if (!is_undefined(scr_transformationCheck(state)))
    {
        scr_sound(sfx_cottongone);
        scr_sound(sound_losetransformation);
        state = states.normal;
        
        if (key_attack)
        {
            if (abs(movespeed < 10))
                movespeed = 10;
            else
                movespeed = abs(movespeed);
            
            state = states.mach2;
        }
        
        sprite_index = spr_idle;
        instance_create(x, y, obj_poofeffect);
        image_index = 0;
    }
}
