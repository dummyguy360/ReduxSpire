if (room == hub_w1)
    exit;

draw_sprite(spr_comboEnd, 0, x, y);
var title = floor(combo / 5);
var img_ind = floor(title_cur + title_index);
draw_sprite(spr_comboTitles, (title * 2) + title_index, x, y + 10);

if (showVery)
    draw_sprite(spr_comboOver, 0, x - 60, y - 15);
