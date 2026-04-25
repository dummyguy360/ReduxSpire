if (room == hub_w1)
    exit;

draw_set_font(global.MoneyFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var shakeY = obj_camera.Collectshake * random_range(-1, 1);
draw_text_transformed_color(x, y + 88 + shakeY + obj_camera.DrawY, number, 1, 1, 0, image_blend, image_blend, image_blend, image_blend, image_alpha);
draw_set_valign(fa_top);
