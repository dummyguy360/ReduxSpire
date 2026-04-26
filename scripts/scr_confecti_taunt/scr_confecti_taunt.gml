function scr_confecti_taunt()
{
    if (sprite_index != spr_supertaunt)
        sprite_index = spr_taunt;
    
    if (sprite_index == spr_supertaunt)
        image_speed = 0.4;
    
    if (obj_player.state == states.backbreaker && (obj_player.sprite_index == spr_player_PZ_superTaunt_1 || obj_player.sprite_index == spr_player_PZ_superTaunt_2 || obj_player.sprite_index == spr_player_PZ_superTaunt_3 || obj_player.sprite_index == spr_player_PZ_superTaunt_4) && sprite_index != spr_supertaunt)
    {
        with (obj_confectitaunt)
        {
            if (o_id == other.id)
                instance_destroy();
        }
        
        state = confectistate.taunt;
        sprite_index = spr_supertaunt;
        image_index = 0;
    }
    
    if (obj_player.sprite_index != obj_player.spr_player_taunt)
        state = confectistate.normal;
}
