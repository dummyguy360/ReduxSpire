if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (sprite_index != spr_charcherry_wait && global.panic == 0)
    sprite_index = spr_charcherry_wait;

if (state != states.secondjump && state != states.pistolaim && state != states.chainsawbump)
    state = states.secondjump;
