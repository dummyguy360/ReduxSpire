canCollide = function(arg0 = 370)
{
    switch (arg0)
    {
        case 370:
        case 578:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return (_state == states.cotton && arg0.state != states.cottondrill) || _state == states.cottonroll;
            break;
        
        default:
            return true;
            break;
    }
};
