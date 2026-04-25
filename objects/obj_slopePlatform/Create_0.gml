canCollide = function(arg0 = 370)
{
    switch (arg0)
    {
        case 370:
        case 578:
            var _state = global.freezeframe ? arg0.frozenstate : arg0.state;
            return _state != states.ladder;
        
        default:
            return true;
    }
};

if (sprite_index == spr_slopePlatform || sprite_index == spr_slopePlatform2)
{
    sprite_index = spr_slopePlatform2;
    mask_index = spr_slopePlatform;
}
