var _player = instance_nearest(x, y, obj_player);

if (place_meeting(x, y - 4, _player) && !place_meeting(x, y, obj_minedummycart) && _player.state != states.minecart)
{
    grabbedMinecart = true;
    global.combofreeze = 30;
    scr_sound(sfx_transfo);
    
    if (chance_update(50))
    {
        audio_stop_sound(sfx_PZvoice_transfo1);
        audio_stop_sound(sfx_PZvoice_transfo2);
        audio_stop_sound(sfx_PZvoice_transfo3);
        audio_stop_sound(sfx_PZvoice1);
        var a = scr_sound(choose(sfx_PZvoice_transfo1, sfx_PZvoice_transfo2, sfx_PZvoice_transfo3, sfx_PZvoice_hurt5));
        audio_sound_pitch(a, random_range(0.95, 1.05));
    }
    
    _player.state = states.minecart;
    
    for (var i = 0; i < (sprite_get_number(spr_coalDebris) - 1); i++)
    {
        with (instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_debris))
        {
            sprite_index = spr_coalDebris;
            image_index = i;
        }
    }
    
    if (_player.xscale == image_xscale)
        _player.movespeed = clamp(_player.movespeed, 3, 12);
    else
        _player.movespeed = clamp(_player.movespeed / 4, 3, 12);
    
    _player.vsp = vsp;
    _player.sprite_index = spr_player_PZ_minecart;
    _player.x = x;
    _player.y = y;
    _player.xscale = image_xscale;
    
    if (!instance_exists(obj_poofeffect))
        instance_create(x, y, obj_poofeffect);
    
    var myButton1 = get_control_string(global.key_jump);
    scr_controlprompt("[spr_buttonfont]" + myButton1 + "[spr_promptfont] Jump" + "[spr_buttonfont]" + myButton1 + "[spr_promptfont] Dismount Minecart (In Air)");
}

if (_player.state == states.minecart || place_meeting(x, y, obj_minedummycart))
    image_alpha = 0.5;
else
    image_alpha = 1;
