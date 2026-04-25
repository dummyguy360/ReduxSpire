scr_collision();

if (playerID.sprite_index != spr_player_PZ_idle_breakdance && playerID.sprite_index != spr_player_PZ_walk_breakdance)
{
    audio_stop_sound(sfx_boombox);
    audio_stop_sound(c_snd);
    instance_destroy();
}

if (audio_emitter_exists(c_emit) && playerID.sprite_index == spr_player_PZ_idle_breakdance)
{
    if (!audio_is_playing(c_snd))
        c_snd = audio_play_sound_on(c_emit, sfx_boombox, 1, 10);
    
    var c_vol = global.soundVolume * global.masterVolume;
    audio_sound_gain(c_snd, c_vol, 0);
    audio_emitter_position(c_emit, x - 480, y - 270, 0);
}
