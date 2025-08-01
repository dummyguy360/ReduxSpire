function draw_option(arg0, arg1, arg2, arg3)
{
    draw_set_color(c_white);
    
    if (arg3 == false)
        draw_set_color(#666666);
    
    draw_text(arg0, arg1, arg2);
    draw_set_color(c_white);
}
