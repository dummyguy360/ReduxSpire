if (global.panic == false)
{
    sprite_index = spr_minipillarwokeSlope_new;
    x = xstart;
    y = ystart;
}
else if (global.switchactivated == true || global.panic == true)
{
    sprite_index = spr_minipillarsleepSlope_new;
    x = -900;
    y = -900;
}
