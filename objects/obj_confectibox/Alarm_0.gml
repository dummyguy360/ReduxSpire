sprite_index = spr_confecticage_hop;

with (instance_create(x + 50, y + 25, obj_cloudeffect))
    sprite_index = spr_confecticage_help;

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
play_sfx(emitter, 181);
audio_sound_gain(snd, global.soundVolume, 0);
