if (state == states.normal && sign(image_xscale) != sign(other.image_xscale))
{
    image_xscale = sign(other.image_xscale);
    image_index = 0;
    sprite_index = spr_spraydrift;
    state = states.titlescreen;
}
