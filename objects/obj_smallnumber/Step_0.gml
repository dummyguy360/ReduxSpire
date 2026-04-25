if (flash && alarm[3] <= 0)
    alarm[3] = 8;

if (alarm[4] > 0)
    exit;

numberScale = approach(numberScale, scaleTarget, (scaleTarget <= 0) ? 0.15 : 0.05);

if (numberScale >= scaleTarget && scaleTarget > 0)
{
    flash = true;
    scaleTarget = 0;
}

if (numberScale <= 0)
    instance_destroy();
