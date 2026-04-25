if (DestroyedBy.object_index == obj_player)
{
    if (place_meeting(x - DestroyedBy.hsp, y, DestroyedBy))
    {
        if (DestroyedBy.state == states.mach1)
        {
            with (DestroyedBy)
            {
                with (other.id)
                    instance_destroy();
                
                hsp = -xscale * 4;
                vsp = -4;
                mach2 = 0;
                image_index = 0;
                
                if (state != states.mach1)
                    sprite_index = choose(spr_player_blockbreak1, spr_player_blockbreak2, spr_player_blockbreak3, spr_player_blockbreak4, spr_player_blockbreak5, spr_player_blockbreak6, spr_player_blockbreak7);
                else
                    sprite_index = spr_canehit;
                
                state = states.tackle;
            }
        }
        else if (DestroyedBy.state == states.handstandjump)
        {
            instance_destroy();
        }
        else
            instance_destroy();
    }
}
else
    instance_destroy();
