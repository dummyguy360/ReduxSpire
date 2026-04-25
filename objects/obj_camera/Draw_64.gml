var shakeX = Collectshake * random_range(-1, 1);
var shakeY = Collectshake * random_range(-1, 1);

if (DrawHUD)
{
    shakeX = Collectshake * random_range(-1, 1);
    shakeY = Collectshake * random_range(-1, 1);
    
    if (room != scootercutsceneidk && room != rm_credits && room != devroom && room != palroom && room != rank_room && room != rm_introVideo && room != realtitlescreen)
    {
        draw_sprite_ext(spr_cakehud, 0, 121 + shakeX, 88 + shakeY + DrawY, 1, 1, 0, c_white, 1);
        
        if (global.collect > global.crank)
            draw_sprite_ext(spr_cranktopping, 0, 121 + shakeX, 88 + shakeY + DrawY, 1, 1, 0, c_white, 1);
        
        if (global.collect > global.brank)
            draw_sprite_ext(spr_branktopping, 0, 121 + shakeX, 88 + shakeY + DrawY, 1, 1, 0, c_white, 1);
        
        if (global.collect > global.arank)
            draw_sprite_ext(spr_aranktopping, 0, 121 + shakeX, 88 + shakeY + DrawY, 1, 1, 0, c_white, 1);
        
        if (global.collect > global.srank)
            draw_sprite_ext(spr_sranktopping, 0, 121 + shakeX, 88 + shakeY + DrawY, 1, 1, 0, c_white, 1);
        
        shader_reset();
        draw_set_font(global.candlefont);
        draw_set_halign(fa_center);
        draw_set_color(c_white);
        var _string = string(global.collect);
        var _string_length = string_length(_string);
        
        if (oldPointCollect != _string)
        {
            array_resize(pointColors, _string_length);
            
            for (self.i = 0; self.i < _string_length; self.i++)
                pointColors[self.i] = (((_string_length - self.i) * 3) + real(string_char_at(_string, self.i + 1))) % 7;
            
            oldPointCollect = _string;
        }
        
        for (var i = 0; i < _string_length; i++)
        {
            var palette_select = pointColors[i];
            pal_swap_set(spr_palcandle, palette_select, false);
            var x_offset = (((string_width(_string) / _string_length) * i) - (string_width(_string) / 2)) + 5;
            var y_offset = (i % 2) ? 0 : -6;
            draw_text(137 + x_offset + shakeX, 23 + y_offset + DrawY + shakeY, string_char_at(_string, i + 1));
            pal_swap_reset();
        }
    }
    
    draw_set_font(global.promptfont);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
}

if (global.levelname != "none" && room != hub_w1 && room != hub_w2 && room != timesuproom && !instance_exists(obj_endlevelfade) && !instance_exists(obj_titlecard) && room != rm_titlecard)
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

if (global.levelname != "none" && !(room == timesuproom || room == rank_room || room == timesuproom || room == hub_w1 || room == hub_w2 || room == hub_basement || instance_exists(obj_bosscontroller)))
{
    if (!instance_exists(obj_startgate))
    {
        var bubbleempty = spr_rankbubble_d;
        var bubblefilled = spr_rankbubble_dfilled;
        var local_rank = global.crank;
        var minus_moment = 0;
        var bubbleframe = 0;
        
        switch (global.currentrank)
        {
            case "P":
                bubbleempty = spr_rankbubble_p;
                bubblefilled = spr_rankbubble_pfilled;
                local_rank = global.srank;
                minus_moment = global.srank;
                bubbleframe = 0;
                break;
            
            case "S":
                bubbleempty = spr_rankbubble_s;
                bubblefilled = spr_rankbubble_sfilled;
                local_rank = global.srank;
                minus_moment = global.arank;
                bubbleframe = 0;
                break;
            
            case "A":
                bubbleempty = spr_rankbubble_a;
                bubblefilled = spr_rankbubble_afilled;
                local_rank = global.srank;
                minus_moment = global.arank;
                bubbleframe = 1;
                break;
            
            case "B":
                bubbleempty = spr_rankbubble_b;
                bubblefilled = spr_rankbubble_bfilled;
                local_rank = global.arank;
                minus_moment = global.brank;
                bubbleframe = 2;
                break;
            
            case "C":
                bubbleempty = spr_rankbubble_c;
                bubblefilled = spr_rankbubble_cfilled;
                local_rank = global.brank;
                minus_moment = global.crank;
                bubbleframe = 3;
                break;
            
            default:
                bubbleempty = spr_rankbubble_d;
                bubblefilled = spr_rankbubble_dfilled;
                local_rank = global.crank;
                minus_moment = 0;
                bubbleframe = 4;
                break;
        }
        
        var bubbleWidth = sprite_get_width(bubblefilled);
        var bubbleHeight = sprite_get_height(bubblefilled);
        var rankpercent = (global.collect - minus_moment) / (local_rank - minus_moment);
        
        if (!surface_exists(rankbubblesurface))
            rankbubblesurface = surface_create(96, 96);
        else if (surface_exists(rankbubblesurface))
        {
            surface_set_target(rankbubblesurface);
            draw_clear_alpha(c_white, 0);
            draw_sprite_ext(spr_rankbubble_bg, bubbleframe, surface_get_width(rankbubblesurface) / 2, (surface_get_height(rankbubblesurface) / 2) + DrawY, 1, 1, 0, c_white, 1);
            
            if (global.currentrank == "P")
                draw_sprite_ext(spr_rankbubble_pfilled, -1, 16, 16 + DrawY, 1, 1, 0, c_white, 1);
            
            if (global.currentrank == "S")
                draw_sprite_ext(spr_rankbubble_sfilled, -1, 16, 16 + DrawY, 1, 1, 0, c_white, 1);
            else
            {
                draw_sprite_ext(bubbleempty, -1, 16, 16 + DrawY, 1, 1, 0, c_white, 1);
                draw_sprite_part_ext(bubblefilled, -1, 0, bubbleHeight - (bubbleHeight * rankpercent), bubbleWidth, bubbleHeight * rankpercent, 16, ((16 + bubbleHeight) - (bubbleHeight * rankpercent)) + DrawY, 1, 1, c_white, 1);
            }
            
            surface_reset_target();
            draw_surface_ext(rankbubblesurface, (214 - ((surface_get_width(rankbubblesurface) / 2) * bubblescale)) + 1 + shakeX, (17 - ((surface_get_height(rankbubblesurface) / 2) * bubblescale)) + 1 + shakeY + DrawY, 1 + bubblescale, 1 + bubblescale, 0, c_white, alpha);
        }
    }
}

if (global.debugmode == 1)
{
    draw_set_font(global.promptfont);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(260, 450, angle);
    draw_text(325, 450, angledir);
    draw_text(100, 400, obj_player.x);
    draw_text(100, 450, obj_player.y);
    var roomname = string_upper(room_get_name(global.GMLIVE_realroom));
    draw_text(150, 0, roomname);
}

if (global.debugmode == 1)
{
    draw_set_font(font_dev);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    draw_text(0, 50, fps_real);
    var roomname = string_upper(room_get_name(room));
    draw_text(0, 100, roomname);
    var spritename = string_upper(sprite_get_name(obj_player.sprite_index));
    draw_text(0, 150, spritename);
}

if (global.screenflash > 0)
    draw_rectangle_color(0, 0, 960, 540, c_white, c_white, c_white, c_white, 0);

if (global.dancetimer > 0)
    draw_text(480, 100, global.dancetimer);
