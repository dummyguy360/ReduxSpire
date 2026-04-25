depth = 1;
comboScore = 0;
subtractBy = 0;
alarm[0] = 30;
x = 832;
y = 197;
ystart = y;
title = 0;
showVery = title >= 25;
title_cur = wrap(title, 0, 24) * 2;
title_index = 0;
image_speed = 0.35;
timer = 30;
workaround = 2241;
combo = 0;

if (room != hub_w1)
{
    scr_sound(sound_comboend);
    scr_sound(sfx_kashing);
}
