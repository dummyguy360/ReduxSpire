draw_set_alpha(fadealpha);
draw_set_color(c_white);
draw_rectangle(-64, -64, 1024, 604, false);
draw_set_alpha(1);
draw_set_color(c_white);

if (global.levelname != "none" && room != hub_w1 && room != timesuproom)
{
    var tiny = ":";
    var tinier = ".";
    var tinyish = ":";
    var tiniest = "";
    
    if (global.playseconds < 10)
        tiny = ":0";
    
    if (global.playmiliseconds < 10)
        tinier = ".0";
    
    if (global.playminutes < 10)
        tinyish = ":0";
    
    if (global.playhour < 10)
        tiniest = "0";
    
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_set_font(global.smallfont_new);
    draw_text(944, 532, string_hash_to_newline(string(tiniest) + string(global.playhour) + string(tinyish) + string(global.playminutes) + string(tiny) + string(global.playseconds) + string(tinier) + string(global.playmiliseconds)));
    draw_set_valign(fa_top);
}
