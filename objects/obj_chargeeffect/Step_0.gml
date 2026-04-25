if (playerID.state == states.climbceiling)
    image_xscale = -playerID.xscale;
else
    image_xscale = playerID.xscale;

if (playerID.state != states.mach3 && playerID.state != states.minecart && playerID.state != states.climbceiling)
    instance_destroy();

if (playerID.state != states.minecart && playerID.state != states.climbceiling && playerID.sprite_index != spr_player_PZ_wallJumpCancel && playerID.sprite_index != spr_player_PZ_wallJumpCancel_intro)
    x = playerID.x + (16 * playerID.xscale);
else if (playerID.state == states.minecart || (playerID.state == states.mach3 && (playerID.sprite_index == spr_player_PZ_wallJumpCancel || playerID.sprite_index == spr_player_PZ_wallJumpCancel_intro)))
    x = playerID.x + (32 * playerID.xscale);
else if (playerID.state == states.climbceiling)
    x = playerID.x + (32 * -playerID.xscale);

if (playerID.state == states.climbceiling)
    y = playerID.y + 46;
else
    y = playerID.y;

if ((playerID.state == states.machroll || playerID.sprite_index == playerID.spr_dive || (playerID.state == states.mach3 && y != playerID.y) || ((playerID.state == states.minecart || playerID.state == states.climbceiling) && playerID.movespeed < 12)) && playerID.state != states.mach3)
    instance_destroy();
