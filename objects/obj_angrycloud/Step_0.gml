image_speed = 0.35;
image_xscale = playerID.xscale;
x = playerID.x;
y = playerID.y;

if (playerID.angry == 0 || playerID.state != states.normal)
    instance_destroy();
