if (!(is_hub() || !scr_roomcheck()))
{
    if (tvsprite == spr_tvHUD_turningOn || sprite_index == spr_tvHUD_turningOn)
    {
        turningOnindex += 0.35;
        draw_sprite(spr_tvHUD_turningOn, turningOnindex, 845, 74 + DrawY);
    }
    else
        turningOnindex = 0;
    
    if (!staticActivated)
        static_index = 0;
    else
    {
        static_index += 0.3;
        
        if (floor(static_index) >= 5)
        {
            static_index = 0;
            staticActivated = !staticActivated;
            tvsprite = queuedSprite;
        }
    }
    
    bobbing = 0;
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    image_index_combometer += 0.35;
    
    if (room != hub_w1)
    {
        var _x = round(xcombometer);
        var _y = round(ycombometer);
        draw_sprite_ext(spr_tvHUD_comboMeter_back, 0, _x, _y, 1, 1, 0, c_white, 1);
        var border_sprite = sprite_get_xoffset(spr_tvHUD_comboMeter_back);
        var border_sprite2 = sprite_get_yoffset(spr_tvHUD_comboMeter_back);
        var meter_sprite = sprite_get_width(spr_tvHUD_comboMeter_fill);
        var meter_sprite2 = sprite_get_height(spr_tvHUD_comboMeter_fill);
        
        if (!surface_exists(comboSurface))
            comboSurface = surface_create(meter_sprite, meter_sprite2);
        else
        {
            surface_set_target(comboSurface);
            draw_clear_alpha(c_black, 0);
            pal_swap_set(spr_comboMeterFill_pal, !global.combolost, false);
            draw_sprite(spr_tvHUD_comboMeter_fill, image_index_combometer, round(combofillDisplay) - meter_sprite, 0);
            pal_swap_reset();
            gpu_set_blendmode(bm_subtract);
            draw_sprite(spr_tvHUD_comboMeter_cut, 0, 0, 0);
            gpu_set_blendmode(bm_normal);
            surface_reset_target();
        }
        
        var _fillXStart = 50;
        var _fillYstart = 73;
        var _xx = (_x - border_sprite) + _fillXStart;
        var _yy = (_y - border_sprite2) + _fillYstart;
        draw_surface(comboSurface, _xx, _yy);
        draw_sprite_ext(spr_tvHUD_comboMeter, image_index_combometer, _x, _y, 1, 1, 0, c_white, 1);
        draw_set_valign(fa_top);
        draw_set_halign(fa_right);
        draw_set_font(global.combofont_new);
        draw_text(_x - 17, _y + 26, string(comboDisplay));
    }
    
    if (sprite_index != spr_tvHUD_turningOn && tvsprite != spr_tvHUD_turningOn)
    {
        draw_sprite_ext(tvbg, current_bg, 832, 83 + DrawY + bobbing, 1, 1, 0, c_white, 1);
        scr_palette_as_player();
        draw_sprite_ext(tvsprite, image_index, 845, 74 + DrawY, 1, 1, 0, c_white, 1);
    }
    
    if (global.panic && tvsprite != spr_tvHUD_turnedOff && tvsprite != spr_tvHUD_turningOn)
    {
        pal_swap_reset();
        
        if (signalBuffer-- < 0)
        {
            weakSignal = true;
            signalindex = 0;
            signalBuffer = irandom_range(300, 1000);
        }
        
        if (weakSignal)
            signalindex += 0.35;
        
        if (signalindex >= 33)
            weakSignal = 0;
        
        draw_sprite_ext(spr_tvHUD_weakSignal_small, signalindex, 845, 74 + DrawY, 1, 1, 0, c_white, 1);
    }
    
    if (staticActivated == true)
    {
        pal_swap_reset();
        draw_sprite_ext(spr_tvHUD_transitionStatic, static_index, 845, 74 + DrawY, 1, 1, 0, c_white, 1);
    }
    
    pal_swap_reset();
    
    if (tvsprite != spr_tvHUD_turnedOff && tvsprite != spr_tvHUD_turningOn)
    {
        if (obj_player.playerNoInputBuffer >= obj_player.playerNoInputBufferMax)
            draw_sprite_ext(spr_tvHUD_logoBounce, 0, 845 + xscreensaver, 74 + DrawY + yscreensaver, 1, 1, 0, c_white, 1);
        
        if (global.masterVolume <= 0 || (global.soundVolume <= 0 && global.musicVolume <= 0))
            draw_sprite_ext(spr_tvHUD_muteIcon, 0, 845, 74 + DrawY, 1, 1, 0, c_white, muteIconAlpha);
    }
    
    draw_set_font(global.promptfont);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_set_font(global.promptfont);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    var timerx = 480;
    var timery = 480 + timer_y;
    var minsx = timerx - 90;
    var secx = timerx - 10;
    var minsy = timery - 5;
    var perc = clamp(1 - (target_fill / global.maxwave), 0, 1);
    var john_ypos = -12 * perc;
    var dist = clamp(perc * 268, 0, 268);
    var timeinsecs = floor(target_fill / 60);
    var mins = max(floor(timeinsecs / 60), 0);
    var secs = max(timeinsecs % 60, 0);
    
    if (global.panic == 1 || global.starrmode == 1)
    {
        clock_index += 0.35;
        
        if (!sucroseTimer)
            target_fill = lerp(target_fill, global.fill, 0.03);
        else
            target_fill = approach(target_fill, global.fill, 10);
        
        var gaining_time = global.fill > target_fill;
        var display_mins = string(abs(mins));
        var display_secs = string(abs(secs));
        
        if (secs < 10)
            display_secs = "0" + display_secs;
        
        var timer_string = string(display_mins + ":" + display_secs);
        
        if (!sucroseTimer)
        {
            if (coneball_sprite != spr_bartimer_showtime)
            {
                draw_sprite_ext(spr_bartimer_normalBack, coneball_index, timerx, timery, 1, 1, 0, c_white, 1);
                draw_sprite_part(spr_bartimer_strip, 0, 0, 0, dist + 45, 113, timerx - 184, timery - 56);
                draw_sprite_ext(spr_bartimer_roll, roll_index, (timerx - 147) + dist, timery + john_ypos + 31, 1, 1, 0, c_white, 1);
            }
            
            draw_sprite_ext(coneball_sprite, floor(coneball_index), timerx, timery, 1, 1, 0, c_white, 1);
            
            if (global.fill > 0)
            {
                draw_sprite(spr_clockTimer, clock_index, (timerx - string_width(timer_string)) + 16, timery + 16);
                draw_text(timerx, timery, timer_string);
            }
        }
        else
        {
            draw_set_font(global.timerfont);
            draw_set_halign(fa_left);
            var _tmr_spr = oldTimer_sprite;
            
            if (_tmr_spr == spr_timer && gaining_time)
                _tmr_spr = spr_timer_gain;
            
            draw_sprite_ext(oldBall_sprite, oldBall_index, timerx, timery, 1, 1, 0, c_white, 1);
            draw_sprite_ext(_tmr_spr, oldTimer_index, timerx, timery, 1, 1, 0, c_white, 1);
            
            if (mins < 10)
                display_mins = "0" + display_mins;
            
            if (oldTimer_sprite != spr_timer_timesup)
            {
                draw_set_color(gaining_time ? #60D048 : #F80000);
                draw_text(minsx, minsy, display_mins);
                draw_text(secx, minsy + 1, display_secs);
                draw_set_color(c_white);
            }
        }
    }
}

var tgt = -100;
var spd = 2;

if (lap_out > 0)
{
    tgt = 90;
    spd = 2;
    lap_out--;
}

lap_y = approach(lap_y, tgt, spd);
draw_set_halign(fa_center);
draw_set_font(global.lapfont);
var x_shk = random_range(-1, 1);
var y_shk = random_range(-1, 1);

if (global.lapcount > 0)
{
    draw_sprite(spr_lapbg, 0, 480 + x_shk, lap_y + y_shk);
    draw_text(480 + x_shk, lap_y + y_shk, global.lapcount);
}

if (shownewtext == true)
{
    draw_sprite_ext(textbubblesprites, textbubbleframes, 448, 45, 1, 1, 0, c_white, 1);
    
    if (!surface_exists(textpromptsurface))
        textpromptsurface = surface_create(300, 100);
    
    surface_set_target(textpromptsurface);
    draw_clear_alpha(c_black, 0);
    var _new_message = new_message;
    draw_set_font(global.bubblefont);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    _new_message = new_message;
    
    if (textbubblesprites == spr_tv_bubble)
    {
        var _length = -(floor(string_width(_new_message)) + 5);
        
        if (floor(text_x) <= _length)
        {
            textbubblesprites = spr_tv_bubbleclose;
            textbubbleframes = 0;
        }
        
        draw_text(text_x, 30, _new_message);
    }
    
    surface_reset_target();
    
    if (surface_exists(textpromptsurface))
        draw_surface(textpromptsurface, 283, -10);
    
    if (textbubblesprites == spr_tv_bubble)
        draw_sprite(spr_tv_bubblefade, -1, 448, 45);
}

var promptY;

if (global.panic)
    promptY = 425;
else
    promptY = 500;

draw_set_alpha(promptalpha);
draw_text_scribble(480, promptY, "[fa_middle][shake]" + controlprompt);
draw_set_alpha(1);
