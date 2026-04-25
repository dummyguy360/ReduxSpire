canCollide = function(callingObject = obj_player)
{
    switch (callingObject)
    {
        case obj_player:
        case obj_player2:
            var _state = global.freezeframe ? callingObject.frozenstate : callingObject.state;
            return _state != states.ladder;
        
        default:
            return true;
    }
};

if (sprite_index == spr_platform || sprite_index == spr_platform2)
{
    sprite_index = spr_platform2;
    mask_index = spr_platform;
}
