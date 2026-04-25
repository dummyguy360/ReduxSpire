if (image_alpha == 1)
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    if (!global.freezeframe)
    {
        x = approach(x, obj_player.x, lengthdir_x(8, dir));
        y = approach(y, obj_player.y, lengthdir_y(8, dir));
    }
}
else
    image_alpha += 0.01;

var pid = instance_place(x, y, obj_player);

if (pid > 0 && !pid.cutscene && !instance_exists(obj_fadeout) && !instance_exists(obj_endlevelfade) && image_alpha == 1)
{
    with (pid)
    {
        instance_destroy(obj_fadeout);
        targetDoor = "A";
        room = timesuproom;
        state = states.timesup;
        sprite_index = spr_Timesup;
        image_index = 0;
        audio_stop_all();
        scr_sound(mu_timesup);
    }
    
    audio_stop_sound(sfx_coneball);
    audio_stop_sound(c_snd);
    audio_stop_sound(sfx_coneball_moving);
    instance_destroy();
}

if (audio_emitter_exists(c_emit) && room != timesuproom)
{
    if (!audio_is_playing(c_snd))
        c_snd = audio_play_sound_on(c_emit, sfx_coneball_moving, 1, 10);
    
    var c_vol = global.soundVolume * global.masterVolume;
    audio_sound_gain(c_snd, c_vol, 0);
    audio_emitter_position(c_emit, x - 480, y - 270, 0);
}

savedCamX = x - camera_get_view_x(view_camera[0]);
savedCamY = y - camera_get_view_y(view_camera[0]);
