x = obj_player.x;
y = obj_player.y - 20;

if (obj_player.sprite_index == spr_player_PZ_superSpring)
    y = obj_player.y + 7;

image_xscale = obj_player.image_xscale;

if (obj_player.state == states.climbwall)
    sprite_index = spr_wallChargeEffect;
else
    sprite_index = spr_superJumpEffect;

if ((obj_player.state != states.climbwall && obj_player.state != states.Sjump) || (obj_player.state == states.Sjump && obj_player.sprite_index == spr_player_PZ_superJump_cancel_intro) || obj_player.sprite_index == spr_player_PZ_wallJumpCancel_intro)
    instance_destroy();
