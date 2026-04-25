if (room == hub_w1)
    exit;

var title = floor(global.combo / 5);
var img_ind = floor(title_cur + title_index);
draw_sprite(workaround, (title * 2) + title_index, x, y + 10);

if (showVery)
    draw_sprite(spr_comboOver, 0, x - 60, y - 15);

draw_set_font(global.smallfont);
draw_set_halign(fa_center);
