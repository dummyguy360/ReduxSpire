dir = point_direction(x, y, targetX, targetY);
x = approach(x, targetX, abs(lengthdir_x(16, dir)));
y = approach(y, targetY, abs(lengthdir_y(16, dir)));

if (x == targetX || y == targetY)
    instance_destroy();

if (x != targetX)
    image_xscale = -sign(x - targetX);

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
