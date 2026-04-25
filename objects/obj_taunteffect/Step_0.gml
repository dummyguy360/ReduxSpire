x = obj_player.x;
y = obj_player.y;

if (obj_player.sprite_index != obj_player.spr_taunt && obj_player.sprite_index != spr_player_PZ_superTaunt_1 && obj_player.sprite_index != spr_player_PZ_superTaunt_2 && obj_player.sprite_index != spr_player_PZ_superTaunt_3 && obj_player.sprite_index != spr_player_PZ_superTaunt_4)
    instance_destroy();
