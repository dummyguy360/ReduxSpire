if (sprite_index == spr_spinningFireParticle)
{
    pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0);
    draw_self();
    shader_reset();
}
else
{
    draw_self();
}
