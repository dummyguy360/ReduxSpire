obj_player.state = states.cotton;
instance_destroy();

with (instance_create(obj_player.x, obj_player.y, obj_poofeffect))
    color = 2;

obj_player.sprite_index = obj_player.spr_cottonidle;
global.combofreeze = 30;
