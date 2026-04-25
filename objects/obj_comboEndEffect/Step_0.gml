title_index += 0.35;

if (title_index >= 2)
    title_index = frac(title_index);

if (global.combotime > 0 && global.combo > 0)
    y = approach(y, 265, 10);

if (!timer--)
{
    alarm[1] = 50;
    timer = 60;
}

if (combo >= 125)
    showVery = 1;
