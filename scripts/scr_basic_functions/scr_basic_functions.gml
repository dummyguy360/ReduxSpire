function approach(arg0, arg1, arg2)
{
    return arg0 + clamp(arg1 - arg0, -arg2, arg2);
}

function instance_random(arg0)
{
    return instance_find(arg0, irandom(instance_number(arg0) - 1));
}

function trace()
{
    var _string = "";
    
    for (var i = 0; i < argument_count; i++)
        _string += string(argument[i]);
    
    show_debug_message(_string);
    exit;
}

function get_panic()
{
    return global.panic && (!global.secret_room || (instance_exists(obj_tv) && obj_tv.sucroseTimer));
}

function chance(arg0)
{
    return arg0 > random(1);
}

function wave(arg0, arg1, arg2, arg3, arg4 = current_time)
{
    var a4 = (arg1 - arg0) * 0.5;
    return arg0 + a4 + (sin((((arg4 * 0.001) + (arg2 * arg3)) / arg2) * (2 * pi)) * a4);
}

function loop(arg0, arg1, arg2, arg3 = 0, arg4 = current_time / 1000)
{
    var _a = ((arg4 + arg3) % arg2) / arg2;
    
    if (_a == 1)
        _a = 0;
    
    return lerp(arg0, arg1, _a);
}

function wrap(arg0, arg1, arg2)
{
    var value = floor(arg0);
    var _min = floor(min(arg1, arg2));
    var _max = floor(max(arg1, arg2));
    var range = (_max - _min) + 1;
    return ((((value - _min) % range) + range) % range) + _min;
}

function animation_end(arg0 = floor(image_index), arg1 = image_number - 1)
{
    return arg0 >= arg1;
}

function rank_checker(arg0 = global.rank)
{
    var value = 0;
    
    switch (arg0)
    {
        case "p":
            value = 5;
            break;
        
        case "s":
            value = 4;
            break;
        
        case "a":
            value = 3;
            break;
        
        case "b":
            value = 2;
            break;
        
        case "c":
            value = 1;
            break;
        
        case "d":
            value = 0;
            break;
        
        default:
            value = -1;
            break;
    }
    
    return value;
}

function string_extract(arg0, arg1, arg2)
{
    var len = string_length(arg1) - 1;
    
    repeat (arg2)
        arg0 = string_delete(arg0, 1, string_pos(arg1, arg0) + len);
    
    arg0 = string_delete(arg0, string_pos(arg1, arg0), string_length(arg0));
    return arg0;
}

function create_small_number(arg0, arg1, arg2, arg3 = 0)
{
    var _smallnumber = instance_create(arg0, arg1, obj_smallnumber);
    
    with (_smallnumber)
    {
        number = string(arg2);
        color = arg3;
    }
    
    return _smallnumber;
}

function string_get_split(arg0, arg1)
{
    var slot = 0;
    var splits = [];
    var str2 = "";
    
    for (var i = 1; i < (string_length(arg0) + 1); i++)
    {
        var currStr = string_char_at(arg0, i);
        
        if (currStr == arg1)
        {
            if (str2 != "")
            {
                splits[slot] = str2;
                slot++;
            }
            
            str2 = "";
        }
        else
        {
            str2 = str2 + currStr;
            splits[slot] = str2;
        }
    }
    
    if (str2 == "")
        splits[slot] = str2;
    
    return splits;
}

function draw_sprite_ext_flash(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    gpu_set_fog(true, arg7, 0, 1);
    draw_sprite_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    gpu_set_fog(false, c_black, 0, 0);
    exit;
}

function draw_self_flash(arg0)
{
    gpu_set_fog(true, arg0, 0, 1);
    draw_self();
    gpu_set_fog(false, c_black, 0, 0);
    exit;
}

function string_contains(arg0, arg1)
{
    if (string_length(arg1) > string_length(arg0))
        return false;
    
    return string_pos(arg1, arg0) != 0;
}

function string_startswith(arg0, arg1)
{
    if (string_length(arg1) > string_length(arg0))
        return false;
    
    return string_pos(arg1, arg0) == 1;
}

function string_endswith(arg0, arg1)
{
    if (string_length(arg1) > string_length(arg0))
        return false;
    
    return string_pos(arg1, arg0) == ((string_length(arg0) - string_length(arg1)) + 1);
}

function time_in_frames(arg0, arg1)
{
    return ((arg0 * 60) + arg1) * 60;
}

function onBeat(arg0, arg1 = false)
{
    var bps = arg0 / 60;
    var spb = 1 / bps;
    var songTimer = audio_sound_get_track_position(global.music);
    var _fps = 60;
    var beat2 = floor(songTimer) / (spb * _fps);
    
    if (beat != beat2)
    {
        beat = beat2;
        return true;
    }
    
    show_debug_message(beat2);
    show_debug_message(beat);
    return false;
}

function solid_in_line(arg0, arg1 = noone, arg2 = self)
{
    var _list = ds_list_create();
    var set_list = collision_line_list(x, y, arg0.x, arg0.y, par_collision, true, true, _list, true);
    
    if (set_list > 0)
    {
        for (var i = 0; i < set_list; i++)
        {
            var obj = ds_list_find_value(_list, i);
            show_debug_message(obj.object_index);
            
            if (arg1 != noone)
            {
                var found_obj = false;
                
                for (var b = 0; b < array_length(arg1); b++)
                {
                    var arr = arg1[b];
                    show_debug_message(arr);
                    
                    if (obj.object_index == arr)
                        found_obj = true;
                }
                
                if (!found_obj)
                {
                    ds_list_destroy(_list);
                    return true;
                }
            }
            else
            {
                ds_list_destroy(_list);
                return true;
            }
        }
    }
    
    ds_list_destroy(_list);
    return false;
}

function angle_rotate(arg0, arg1, arg2)
{
    var diff = wrap(arg1 - arg0, -180, 180);
    
    if (diff < -arg2)
        return arg0 - arg2;
    
    if (diff > arg2)
        return arg0 + arg2;
    
    return arg1;
}

function gate_createlayer(arg0, arg1, arg2 = 0, arg3 = 0, arg4 = 0)
{
    return 
    {
        drawSpr: arg0,
        drawIndex: arg1,
        drawXscale: 1,
        drawYscale: 1,
        drawImgSpd: arg4,
        drawAlpha: 1,
        drawBlend: c_white,
        drawRot: 0,
        drawx: 0,
        drawy: 0,
        scroll_x: arg2,
        scroll_y: arg3,
        func: noone
    };
}
