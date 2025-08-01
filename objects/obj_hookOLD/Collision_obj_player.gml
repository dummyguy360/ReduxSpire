if (other.state != states.hooks && other.state != states.frozen && other.state != states.noclip)
{
    with (other)
    {
        switch (state)
        {
            case states.handstandjump:
                playerPrevState = UnknownEnum.Value_69;
                playerPrevSprite = 44;
                break;
            
            case states.hurt:
                playerPrevState = UnknownEnum.Value_69;
                playerPrevSprite = 44;
                break;
            
            case states.machslide:
                if (sprite_index == spr_machslideboost3)
                {
                    playerPrevState = UnknownEnum.Value_70;
                    playerPrevSprite = spr_mach3player;
                }
                else if (sprite_index == spr_player_machslideboost)
                {
                    playerPrevState = UnknownEnum.Value_69;
                    playerPrevSprite = 44;
                }
                else
                {
                    playerPrevState = UnknownEnum.Value_71;
                    playerPrevSprite = 524;
                }
                
                break;
            
            case states.cotton:
            case states.cottondrill:
            case states.cottonroll:
                playerPrevState = UnknownEnum.Value_69;
                playerPrevSprite = 12;
                break;
            
            case states.tumble:
                playerPrevState = UnknownEnum.Value_69;
                playerPrevSprite = 12;
                break;
            
            default:
                playerPrevSprite = sprite_index;
                playerPrevState = state;
                break;
        }
        
        y = other.y - 14;
        x = other.x;
        state = states.hooks;
        
        if (other.hookSubState == UnknownEnum.Value_2)
            xscale = 1;
        else if (other.hookSubState == UnknownEnum.Value_1)
            xscale = -1;
        
        substate = other.hookSubState;
        verticalMovespeed = vsp;
        hspCarry = 0;
        slideHsp = 0;
        vspCarry = 0;
    }
    
    audio_emitter_free(hookSoundEmitter);
}
