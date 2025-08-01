canCollide = function(arg0 = 370)
{
    switch (arg0)
    {
        case 370:
        case 578:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return (_state == states.seacream || (_state == states.seacreamjump && arg0.vsp > 0)) && abs(arg0.hsp) >= 12 && !place_meeting(x, y, arg0);
            break;
        
        default:
            return false;
            break;
    }
};
