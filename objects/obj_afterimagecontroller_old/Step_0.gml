if (blink)
{
    if (instance_exists(obj_mach3effect))
        obj_mach3effect.visible = global.BlinkTrail_old;
    
    if (instance_exists(obj_wallkickeffect))
        obj_wallkickeffect.visible = global.BlinkTrail_old;
}

if (!global.freezeframe)
{
    if (blinkingBuffer > 0)
    {
        blinkingBuffer--;
    }
    else
    {
        event_user(0);
        blinkingBuffer = 3;
    }
}
