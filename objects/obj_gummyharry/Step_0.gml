if (sprite_index != spr_gummy_cardboard)
{
    if (obj_player.x > (x - 300) && obj_player.x < (x + 300) && y <= (obj_player.y + 200) && y >= (obj_player.y - 200))
        sprite_index = spr_harryScared;
    else
        sprite_index = spr_harryNEW;
}

ShakeBuffer = approach(ShakeBuffer, 0, 0.5);
