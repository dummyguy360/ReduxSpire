if (image_alpha > 0)
    image_alpha -= 0.15;
else
    instance_destroy();

visible = playerid.visible;

if (!instance_exists(playerid))
    instance_destroy();
