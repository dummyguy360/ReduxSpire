canCollide = function(arg0 = obj_player)
{
    switch (arg0)
    {
        case obj_player:
        case obj_player2:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return _state != states.seacream && _state != states.seacreamstick && _state != states.seacreamjump;
            break;
        
        default:
            return true;
            break;
    }
};
