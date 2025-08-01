depth = 4;

canCollide = function(arg0 = 370)
{
    switch (arg0)
    {
        case 370:
        case 578:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return _state != states.noclip && _state != states.cotton && _state != states.cottondrill && _state != states.cottonroll && _state != states.tumble && _state != states.machroll && _state != states.frostburnbump && _state != states.crouchslide && _state != states.backbreaker && _state != states.bump && _state != states.actor && _state != states.frozen;
            break;
        
        case 298:
            return true;
            break;
        
        default:
            return false;
            break;
    }
};
