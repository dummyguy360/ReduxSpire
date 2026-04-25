if (room == rank_room)
{
    x = savedCamX;
    y = savedCamY;
    x = clamp(x, 100, room_width - 100);
    y = clamp(y, 100, room_height - 100);
    instance_create(x, y, obj_coneballDead);
    scr_sound(sound_explosion);
    scr_sound(sound_maximumspeedland);
}

audio_stop_sound(c_snd);
audio_emitter_free(c_emit);
audio_stop_sound(sfx_coneball_moving);
