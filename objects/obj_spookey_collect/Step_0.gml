scr_collide();

if (place_meeting_collision(x, y))
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(16, dir);
    y += lengthdir_y(16, dir);
}

if (blurEffectTimer-- <= 0)
{
    if (blurEffectTimer < 0)
    {
        with (instance_create(x, y, obj_spookey_aftereffect))
        {
            image_index = max(other.image_index - 1, 0);
            image_alpha = 0.6;
            image_xscale = other.image_xscale;
            sprite_index = other.sprite_index;
        }
        
        blurEffectTimer = 2;
    }
}
