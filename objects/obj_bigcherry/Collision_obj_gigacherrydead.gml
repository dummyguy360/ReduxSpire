if (!setfordeath)
{
    var iceblock = instance_place(x, y, obj_gigacherrydead);
    
    with (instance_create(x, y, obj_gigacherrydead))
    {
        movespeed = abs(iceblock.hsp) + 4;
        image_xscale = other.image_xscale;
    }
}
