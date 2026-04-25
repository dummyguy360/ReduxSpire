if (!lap)
{
    scr_palette_as_player();
    draw_self();
    pal_swap_reset();
    shader_reset();
}
else
    draw_self();
