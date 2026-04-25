function scr_confecti_unlock()
{
    sprite_index = spr_rudejanitor_unlock_new;
    
    if (sprite_index == spr_rudejanitor_unlock_new && sprite_animation_end())
        image_speed = 0;
    
    if (instance_exists(obj_fadeout) && obj_fadeout.fadealpha == 1 && sprite_index == spr_rudejanitor_unlock_new)
        instance_destroy();
}
