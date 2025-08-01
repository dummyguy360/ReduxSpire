function boss_attack_queue(arg0, arg1)
{
    ds_queue_enqueue(atkqueue, arg0, arg1);
}

function boss_create_attack(arg0, arg1, arg2 = 100, arg3 = -4, arg4 = -4)
{
    return 
    {
        atk: arg0,
        diff: arg1,
        time: arg2,
        suba_1: arg3,
        suba_2: arg4
    };
}

function boss_next_attack()
{
    if (ds_queue_empty(atkqueue))
    {
        var b = 254;
        var _atk = b.bossmaxhp - b.bosshp;
        var _length = array_length(phase_atks) - 1;
        _atk = clamp(_atk, 0, _length);
        show_debug_message(_length);
        
        for (var i = 0; i < array_length(phase_atks[_atk]); i++)
            ds_queue_enqueue(atkqueue, phase_atks[_atk][i]);
    }
    
    var _next = ds_queue_dequeue(atkqueue);
    show_debug_message(_next);
    state = _next.atk;
    intensity = _next.diff;
    max_intensity = intensity;
    delay = _next.time;
    max_delay = delay;
    subattack_1 = _next.suba_1;
    subattack_2 = _next.suba_2;
    
    if (state == bossstates.vulnerable)
        flash = true;
}

function face_center_room()
{
    var dir = sign((room_width / 2) - x);
    return dir;
}

function face_obj(arg0)
{
    var dir = sign(arg0.x - x);
    return dir;
}

function scr_grab_boss()
{
    with (obj_player)
    {
        if (state != states.finishingblow || baddiegrabbedID != other.id)
        {
            baddiegrabbedID = other.id;
            supergrabx = other.x - x;
            supergraby = other.y - y;
            sprite_index = spr_player_lungehit;
            image_index = 0;
            state = states.finishingblow;
        }
    }
    
    state = states.cheesepepstick;
    image_xscale = -obj_player.xscale;
    sprite_index = grabbedspr;
}
