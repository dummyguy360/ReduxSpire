image_xscale = obj_player.xscale;

if (obj_player.state == states.machroll && obj_player.sprite_index != spr_player_PZ_machRoll3_intro && obj_player.sprite_index != spr_player_PZ_machRoll3)
    instance_destroy();

x = obj_player.x + (40 * image_xscale);
y = obj_player.y + 20;

if (obj_player.state != states.machroll)
    instance_destroy();
