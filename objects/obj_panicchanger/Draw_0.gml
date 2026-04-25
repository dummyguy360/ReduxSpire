draw_set_alpha(fadealpha);
draw_set_color(c_white);
draw_rectangle(-64, -64, room_width + 64, room_height + 64, 0);
draw_set_alpha(1);

with (obj_player)
{
    scr_palette_as_player();
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, draw_angle, image_blend, image_alpha);
    pal_swap_reset();
    shader_reset();
    
    if (flash)
        draw_sprite_ext_flash(sprite_index, image_index, x, y, xscale, yscale, draw_angle, 16777215, image_alpha);
    
    if (flash == 1 && alarm[11] <= 0)
        alarm[11] = 5;
    
    shader_reset();
}

with (obj_harrydead)
{
    pal_swap_set(spr_palette, paletteselect, 0);
    draw_self();
    pal_swap_reset();
}
