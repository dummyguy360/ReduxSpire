with (obj_player)
{
    if (state != states.Sjump && state != states.freefall)
    {
        scr_sound(sfx_superspring);
        other.image_index = 0;
        other.image_speed = 0.35;
        hsp = 0;
        
        if (other.image_yscale == 1)
        {
            sprite_index = spr_player_PZ_superSpring;
            state = states.Sjump;
            vsp = -12;
            verticalMovespeed = vsp;
            freefallsmash = 0;
            instance_create(other.x, other.y - 80, obj_bangeffect);
        }
        else
        {
            state = states.freefall;
            movespeed = 0;
            vsp = 10;
            freefallsmash = 0;
            sprite_index = spr_player_PZ_fall_outOfControl;
            instance_create(other.x, other.y + 80, obj_bangeffect);
        }
        
        x = other.x;
    }
}
