obj_player.state = states.cotton;
instance_destroy();

with (instance_create(obj_player.x, obj_player.y, obj_poofeffect))
    color = #020000;

obj_player.sprite_index = spr_cotton_idle;
global.combofreeze = 30;
