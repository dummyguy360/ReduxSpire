switch (color)
{
    case c_black:
        draw_set_color(make_colour_rgb(255, 255, 255));
        break;
    
    case #010000:
        draw_set_color(make_colour_rgb(248, 0, 0));
        break;
    
    case #020000:
        draw_set_color(make_colour_rgb(0, 248, 0));
        break;
    
    case #030000:
        draw_set_color(make_color_rgb(0, 0, 248));
        break;
    
    case #040000:
        draw_set_color(make_colour_rgb(0, 0, 0));
        break;
    
    case #050000:
        draw_set_color(make_colour_rgb(244, 144, 0));
        break;
}

draw_set_font(global.smallfont);
draw_set_halign(fa_center);
shader_reset();

if (flash)
{
    gpu_set_fog(true, c_white, 0, 1);
    draw_text(x, y, number);
    gpu_set_fog(false, c_black, 0, 0);
}
else
{
    draw_text(x, y, number);
}
