if (playerID.state != states.freefall && playerID.state != states.superslam && !(playerID.state == states.rupertjump))
    instance_destroy();

if (playerID.state == states.superslam && playerID.sprite_index == spr_player_PZ_pileDriver_land)
    instance_destroy();

x = playerID.x;
y = playerID.y + 16;
