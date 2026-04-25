if (vsp < 20)
    vsp += grav;

x = floor(x);
x += hsp;
y = floor(y);
y += floor(vsp);
tossCooldown = max(tossCooldown - 1, 0);
drawx = x;
drawy = y;
