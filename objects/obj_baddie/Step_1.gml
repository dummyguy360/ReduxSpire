switch (state)
{
    case states.frozen:
        scr_enemy_idle();
        break;
    
    case states.titlescreen:
        scr_enemy_turn();
        break;
    
    case states.Nhookshot:
        scr_enemy_walk();
        break;
    
    case states.slap:
        scr_enemy_land();
        break;
    
    case states.charge:
        scr_enemy_hit();
        break;
    
    case states.normal:
        scr_enemy_charge();
        break;
    
    case states.cheesepep:
        scr_enemy_stun();
        break;
    
    case states.pistolaim:
        scr_enemy_frozen();
        break;
    
    case states.climbwall:
        scr_enemy_shake();
        break;
    
    case states.bombpep:
        scr_enemy_float();
        break;
    
    case states.grabbing:
        scr_enemy_theif();
        break;
    
    case states.climbdownwall:
        scr_enemy_panicWait();
        break;
    
    case states.knightpepslopes:
        scr_enemy_secretWait();
        break;
    
    case states.cheeseball:
        scr_enemy_throw();
        break;
    
    case states.cheesepepstick:
        scr_enemy_grabbed();
        break;
    
    case states.boxxedpep:
        scr_enemy_scared();
        break;
    
    case states.portal:
        scr_enemy_inhaled();
        break;
    
    case states.secondjump:
        scr_enemy_cherrywait();
        break;
    
    case states.chainsawbump:
        scr_enemy_charcherry();
        break;
    
    case states.knightpep:
        scr_enemy_slugidle();
        break;
    
    case states.knightpepattack:
        scr_enemy_slugjump();
        break;
    
    case states.meteorpep:
        scr_enemy_slugparry();
        break;
    
    case states.gottreasure:
        scr_enemy_kick();
        break;
    
    case states.chainsawpogo:
        scr_enemy_eyescreamwait();
        break;
    
    case states.shotgunjump:
        scr_enemy_eyescream();
        break;
    
    case states.stunned:
        scr_enemy_rage();
        break;
    
    case states.handstandjump:
        scr_applejim_bash();
        break;
}

if (y > (room_height + 64))
    instance_destroy();

if (state != states.boxxedpep)
    ScareBuffer = 0;

if (tauntBuffer == true)
{
    if (!instance_exists(tauntBufferEffect))
    {
        with (instance_create(x, y, obj_baddieangrycloud))
        {
            baddieID = other.id;
            other.tauntBufferEffect = id;
        }
    }
    
    if (obj_player.state != states.backbreaker && obj_player.state != states.parry && object_index != obj_popcornbag)
    {
        tauntBuffer = false;
        bombreset = 0;
        ragereset = 0;
        stunned = 0;
        jumptimer = 0;
        ScareBuffer = 0;
    }
    
    if (obj_player.state != states.backbreaker && obj_player.state != states.parry && object_index == obj_popcornbag)
        tauntBuffer = false;
}

if (place_meeting_solid(x, y) && state == states.cheesepep && thrown)
    instance_destroy();
