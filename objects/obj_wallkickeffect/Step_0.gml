if (playerid.state != states.backkick)
    vanish = true;

if (vanish == 1)
{
    if (gonealpha > 0)
        gonealpha -= 0.15;
    else if (gonealpha <= 0)
        instance_destroy();
}

image_alpha = 1;
