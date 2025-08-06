audio_stop_sound(sound_parry);
scr_sound(sound_parry);

with (other.id)
{
    if (object_index == obj_eskimoprojectile)
    {
        bumpcount++;
        var _dir = sign(image_xscale);
        
        if (x != other.x)
            _dir = sign(x - other.x);
        
        image_xscale = _dir;
    }
}

with (obj_pickaxe)
{
    if (distance_to_object(other.id) < 64)
        image_xscale = -image_xscale;
}

with (obj_baddie)
{
    if (distance_to_object(other.id) < 64 && (object_index != obj_charcherry || (object_index == obj_charcherry && state == baddiestate.cherryactive)))
    {
        scr_sleep();
        hsp = obj_player.xscale * 25;
        vsp = 0;
        grav = 0;
        state = baddiestate.stun;
        hp = 0;
        thrown = 1;
    }
}

with (obj_player)
{
    state = states.parry;
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3);
    image_index = 0;
    movespeed = -8;
    flash = 1;
    
    with (instance_create(x, y, obj_bangeffect))
        sprite_index = spr_parryeffect;
}
