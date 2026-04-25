if (vsp < 12)
    vsp += grav;

if (sprite_index != spr_flowerpetal1 && sprite_index != spr_flowerpetal2 && sprite_index != spr_flowerpetal3 && sprite_index != spr_flowerpetal4)
    image_speed = 0;

x += hsp;
y += floor(vsp);
depth = -999;
image_angle += rot;

if (sprite_index == spr_bigdebris_new)
    image_speed = 0.35;

if (sprite_index == spr_flowerpetal1 || sprite_index == spr_flowerpetal2 || sprite_index == spr_flowerpetal3 || sprite_index == spr_flowerpetal4)
{
    image_alpha = approach(image_alpha, 0, 0.1);
    
    if (vsp > 0)
        grav = 0.05;
}
