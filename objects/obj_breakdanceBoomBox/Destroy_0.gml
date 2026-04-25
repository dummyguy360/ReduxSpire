instance_create(x, y, obj_poofeffect);
audio_stop_sound(c_snd);
audio_stop_sound(sfx_boombox);
audio_emitter_free(c_emit);
scr_sound(sfx_breakdance_end);
