if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (sprite_index != spr_charcherry_wait && global.panic == 0)
    sprite_index = spr_charcherry_wait;

if (state != baddiestate.cherrywait && state != baddiestate.frozen && state != baddiestate.cherryactive)
    state = baddiestate.cherrywait;
