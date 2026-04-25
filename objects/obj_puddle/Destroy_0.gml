with (instance_create(x, y, obj_baddieDead))
{
    vsp = random_range(-7, -10);
    hsp = random_range(5, 10) * other.image_xscale;
    canrotate = false;
    sprite_index = spr_juicepuddleair;
    spr_palette = other.spr_palette;
    paletteselect = other.paletteselect;
    image_speed = 0.35;
}
