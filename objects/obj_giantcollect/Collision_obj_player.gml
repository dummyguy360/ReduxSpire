audio_stop_sound(sound_points);
audio_stop_sound(sound_pizzagot);
scr_sound(sound_pizzagot);
scr_sound(sound_points);
scr_ghostcollectible();
global.collectsound = 0;
scr_queue_tvanim(obj_tv.happytvspr, 200);

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

global.collect += 1000;
global.pizzameter += 5;
create_small_number(x, y, "1000");
global.combofreeze = 30;
global.combotime = 60;

repeat (15)
    instance_create((x + random_range(-60, 60)) - 16, (y + random_range(-60, 60)) - 16, obj_collecteffect);

instance_destroy();
