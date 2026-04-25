if (global.levelname == "sucrose")
{
    audio_stop_sound(sfx_bigescapecollect);
    scr_sound(sfx_bigescapecollect);
}
else
{
    audio_stop_sound(sfx_bigcollect);
    scr_sound(sfx_bigcollect);
}

global.collect += 100;
global.pizzameter += 5;
scr_queue_tvanim(obj_tv.happytvspr, 150);
create_small_number(x, y, "100");

if (chance_update(50))
{
    audio_stop_sound(sfx_PZvoice_collect1);
    audio_stop_sound(sfx_PZvoice_collect2);
    audio_stop_sound(sfx_PZvoice_collect3);
    audio_stop_sound(sfx_PZvoice_collect4);
    audio_stop_sound(sfx_PZvoice_collect5);
    var a = scr_sound(choose(sfx_PZvoice_collect1, sfx_PZvoice_collect2, sfx_PZvoice_collect3, sfx_PZvoice_collect4, sfx_PZvoice_collect5));
    audio_sound_pitch(a, random_range(0.95, 1.05));
}

global.combofreeze = 30;
global.combotime = 60;
scr_ghostcollectible();

with (instance_create(x, y, obj_collecteffect))
{
    choosed = true;
    sprite_index = other.sprite_index;
}

instance_destroy();
