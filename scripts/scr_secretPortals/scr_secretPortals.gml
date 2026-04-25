function defaultSecretState(o = undefined)
{
    var _p = obj_player;
    
    if (!is_undefined(o))
        _p = o;
    
    return _p.state;
}

/// @function portal_activate()
/// @description Activates a secret portal
/// @param id
/// @param activate?
function portal_activate(portal, _bool)
{
    with (portal)
    {
        var _activate = !secretActivated;
        
        if (is_undefined(_bool))
            _activate = _bool;
        
        secretActivated = _activate;
    }
}

function cutscene_secretPortal_start()
{
    var _portal = cutscene_get_actor("SECRETPORTAL");
    var _finished = false;
    global.combofreeze = 30;
    
    with (obj_player)
    {
        is_inSecretPortal = true;
        state = states.actor;
        hsp = 0;
        vsp = 0;
        sprite_index = spr_hurt;
        image_speed = 0.35;
        
        if (instance_exists(_portal))
        {
            targetDoor = _portal.targetDoor;
            targetRoom = _portal.targetRoom;
            secretPortal = true;
            x = lerp(x, _portal.x, 0.5);
            y = lerp(y, _portal.y, 0.5);
            
            if (_portal.sprite_index == spr_secretPortal_tele)
            {
                scale = 1 - (min(_portal.image_index, 9) / 9);
                
                if (floor(_portal.image_index) >= (_portal.image_number - 1))
                {
                    _finished = true;
                    scale = 0;
                }
            }
        }
    }
    
    if (_finished)
        cutscene_event_end();
}

function cutscene_secretPortal_middle()
{
    var _portal = cutscene_get_actor("SECRETPORTAL");
    var _finished = true;
    global.combofreeze = 30;
    
    with (obj_player)
    {
        is_inSecretPortal = true;
        state = states.actor;
        hsp = 0;
        vsp = 0;
    }
    
    if (_finished)
    {
        instance_destroy(_portal);
        
        if (!instance_exists(obj_fadeout))
        {
            if (global.secret_room == 0)
                global.secret_room = 1;
            
            scr_sound(sound_door);
            instance_create(0, 0, obj_fadeout);
        }
        
        cutscene_event_end();
    }
}

function cutscene_secretPortal_preend()
{
    var _finished = false;
    var _state = storedState;
    global.combofreeze = 30;
    
    with (obj_player)
    {
        if (!audio_is_playing(sfx_secretexit))
            scr_sound(sfx_secretexit);
        
        is_inSecretPortal = true;
        state = states.actor;
        hsp = 0;
        vsp = 0;
        #region Sprites
        switch (_state)
        {
            case states.mach3:
            case states.mach2:
            case states.mach1:
                sprite_index = spr_mach2;
                break;
            
            case states.cotton:
            case states.cottondrill:
            case states.cottonroll:
                sprite_index = spr_cottonidle;
                break;
            
            default:
                sprite_index = spr_bodyslamfall;
                break;
        }
        #endregion
        image_speed = 0.35;
        
        if (!instance_exists(obj_fadeout))
        {
            scale = approach(scale, 1, 0.05);
            
            if (!instance_exists(portal))
                portal = instance_create(x, y + 14, obj_secretPortalexit);
            else if (scale >= 1)
            {
                scale = 1;
                
                with (instance_create(x, y, obj_radiating_particle))
                {
                    sprite_index = spr_secretpoof;
                    image_speed = 0.25;
                    canRotate = true;
                    minSpd = 2;
                    maxSpd = 5;
                    lifeTime = -1;
                }
                
                _finished = true;
            }
        }
    }
    
    if (_finished)
        cutscene_event_end();
}

function cutscene_secretPortal_end()
{
    var _state = storedState;
    var _finished = false;
    global.combofreeze = 30;
    obj_player._waittimer++;
    
    with (obj_player)
    {
        is_inSecretPortal = true;
        state = states.actor;
        hsp = 0;
        vsp = 0;
        
        if (_waittimer > 10)
        {
            flash = true;
            state = _state;
            
            if (sprite_index == spr_bodyslamfall)
                state = states.freefall;
            
            movespeed = 0;
            _finished = true;
        }
    }
    
    if (_finished)
    {
        obj_player._waittimer = 0;
        cutscene_event_end();
    }
}
