canCollide = function(arg0 = 370)
{
    switch (arg0)
    {
        case 370:
        case 578:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return _state != states.ladder;
            break;
        
        default:
            return true;
            break;
    }
};

depth = 5;
image_speed = 0.35;
image_blend = c_yellow;
oldx = xstart;
oldy = ystart;
