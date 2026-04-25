with (instance_create(x, y, obj_baddieDead))
{
    canrotate = false;
    sprite_index = spr_coneball_dead;
    image_xscale = other.image_xscale;
}

with (instance_create(x, y - 86, obj_baddieDead))
{
    canrotate = false;
    sprite_index = spr_coneball_deadcone;
    image_index = 0;
    image_xscale = other.image_xscale;
    vsp = -9;
    hsp = 4;
}

scr_sound(sound_combo1);
instance_destroy();
