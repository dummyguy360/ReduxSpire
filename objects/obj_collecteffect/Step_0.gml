targety = 88 + obj_camera.DrawY;
var scale = 1.25;
var distance = point_distance(drawx, drawy, targetx, targety);

if (biggening == true)
    drawxscale = approach(drawxscale, scale, 0.15);
else if (biggening == false && distance >= 96)
    drawxscale = approach(drawxscale, 0.85, 0.15);
else
    drawxscale = approach(drawxscale, 0, 0.25);

if (drawxscale == scale)
    biggening = false;

var angle = point_direction(drawx, drawy, targetx, targety);
drawx += lengthdir_x(20, angle);
drawy += lengthdir_y(20, angle);

if (point_in_circle(drawx, drawy, targetx, targety, 32))
{
    with (obj_camera)
        Collectshake = clamp(Collectshake + 5, 2, 10);
    
    drawx = targetx;
    drawy = targety;
    instance_destroy();
}

drawyscale = drawxscale;

if (drawxscale < 1 && !place_meeting(x, y, obj_cameraRegion))
    drawxscale = 1;
