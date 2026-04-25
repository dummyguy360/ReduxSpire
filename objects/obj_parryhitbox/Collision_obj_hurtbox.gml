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
    if (distance_to_object(other.id) < 64 && (object_index != obj_charcherry || (object_index == obj_charcherry && state == states.chainsawbump)))
        instance_destroy();
}

with (obj_player)
{
    state = states.parry;
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3);
    image_index = 0;
    image_speed = 0.35;
    movespeed = 8;
    flash = true;
    
    with (instance_create(x, y, obj_bangeffect))
        sprite_index = spr_parryeffect;
    
    repeat (7)
    {
        with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_radiating_particle))
        {
            sprite_index = spr_fuckassOrb;
            image_speed = 0;
            canRotate = 0;
            minSpd = 7;
            maxSpd = 10;
            lifeTime = 10;
            alarm[0] = 10;
        }
    }
}
