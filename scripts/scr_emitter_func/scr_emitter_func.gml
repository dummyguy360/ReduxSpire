function create_emitter(arg0 = x, arg1 = y, arg2 = 500, arg3 = 1200, arg4 = 2)
{
    var myemit = audio_emitter_create();
    audio_emitter_falloff(myemit, arg2, arg3, arg4);
    audio_emitter_position(myemit, arg1, arg0, 0);
    return myemit;
}

function play_sfx(arg0, arg1, arg2 = false, arg3 = 0, arg4 = 1, arg5 = 1)
{
    if (audio_emitter_exists(arg0))
    {
        return audio_play_sound_on(arg0, arg1, arg2, arg3, arg4, undefined, arg5);
    }
    else
    {
        arg0 = create_emitter();
        return audio_play_sound_on(arg0, arg1, arg2, arg3, arg4, undefined, arg5);
    }
}
