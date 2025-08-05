canCollide = function(arg0 = obj_player)
{
    switch (arg0)
    {
        case obj_player:
        case obj_player2:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return (_state == states.seacream || (_state == states.seacreamjump && arg0.vsp > 0)) && abs(arg0.hsp) >= 12 && !place_meeting(x, y, arg0);
            break;
        
        default:
            return false;
            break;
    }
};
