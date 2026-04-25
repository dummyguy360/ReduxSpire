function scr_enemy_stun()
{
    stunned--;
    
    if (thrown)
        sprite_index = deadspr;
    else
        sprite_index = stunfallspr;
    
    image_speed = 0.35;
    
    if ((grounded || (grounded && !place_meeting(x, y, obj_platform))) && vsp > 0)
    {
        hsp = approach(hsp, 0, 0.3);
        
        if (hp > 0)
            thrown = false;
    }
    
    if ((grounded || (grounded && !place_meeting(x, y, obj_cottonplatform))) && vsp > 0)
    {
        approach(hsp, 0, 0.3);
        
        if (hp > 0)
            thrown = false;
    }
    
    if (place_meeting(x, y + 1, obj_railh))
        hsp = -5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = 5;
    
    if (scr_solid(x + -image_xscale, y) && !thrown && !place_meeting(x + -image_xscale, y, obj_slope))
    {
        with (instance_create(x, y, obj_bulletimpact))
            image_xscale = -other.image_xscale;
        
        grav = 0.5;
        image_xscale *= -1;
        hsp = -image_xscale * 4;
    }
    
    if ((scr_solid(x + -image_xscale, y) || place_meeting(x, y, obj_hallway) || place_meeting(x, y, obj_vertical_hallway)) && thrown && !place_meeting(x + -image_xscale, y, obj_destructibles) && !place_meeting(x + -image_xscale, y, obj_slope) && !place_meeting(x + -image_xscale, y, obj_slope))
    {
        with (instance_create(x, y, obj_bulletimpact))
            image_xscale = -other.image_xscale;
        
        instance_create(x, y, obj_poofeffect);
        instance_destroy();
    }
    
    if (flyup && thrown)
    {
        if (place_meeting(x, y - 1, obj_solid) && !place_meeting(x - 1, y, obj_destructibles))
        {
            with (instance_create(x, y, obj_bulletimpact))
                image_xscale = -other.image_xscale;
            
            instance_create(x, y, obj_poofeffect);
            instance_destroy();
        }
        
        if (place_meeting(x, y + vsp, obj_solid) && !place_meeting(x + vsp, y, obj_destructibles))
        {
            with (instance_create(x, y, obj_bulletimpact))
                image_xscale = -other.image_xscale;
            
            instance_create(x, y, obj_poofeffect);
            instance_destroy();
        }
    }
    
    if (grounded && stunned < 0 && !thrown)
    {
        image_index = 0;
        
        if (object_index != obj_charger && object_index != obj_swedishfish)
        {
            movespeed = 1;
            state = baddiestate.walk;
            sprite_index = walkspr;
        }
        else if (object_index == obj_babybear)
        {
            movespeed = 5;
            state = baddiestate.walk;
            sprite_index = walkspr;
            vsp -= 8;
        }
        else if (object_index == obj_fizz || object_index == obj_froth)
        {
            movespeed = 5;
            state = baddiestate.float;
            sprite_index = walkspr;
            vsp -= 8;
        }
        else if (object_index == obj_creamtheifOLD)
        {
            movespeed = 2;
            state = baddiestate.theif;
            sprite_index = walkspr;
            theifsubstate = 0;
        }
        else
        {
            sprite_index = idlespr;
            state = baddiestate.idle;
        }
    }
    
    if (flyup && vsp > -25 && thrown)
        vsp = -25;
    
    if (thrown)
    {
        if (cloudbuffer > 0)
            cloudbuffer--;
        else
        {
            cloudbuffer = 5;
            instance_create(x, y, obj_cloudeffect);
        }
        
        if (!flyup)
        {
            hsp = 25 * -image_xscale;
            vsp = 0;
            
            if (place_meeting(x + sign(hsp), y, obj_destructibles))
            {
                with (instance_place(x + sign(hsp), y, obj_destructibles))
                {
                    DestroyedBy = other.id;
                    event_user(0);
                }
            }
            
            if (place_meeting(x + -image_xscale, y, obj_destructibles))
            {
                with (instance_place(x + -image_xscale, y, obj_destructibles))
                {
                    DestroyedBy = other.id;
                    event_user(0);
                }
            }
            
            if (place_meeting(x + hsp, y, obj_destructibles))
            {
                with (instance_place(x + hsp, y, obj_destructibles))
                {
                    DestroyedBy = other.id;
                    event_user(0);
                }
            }
        }
        else
        {
            if (place_meeting(x - 1, y, obj_destructibles))
            {
                with (instance_place(x - 1, y, obj_destructibles))
                {
                    DestroyedBy = other.id;
                    event_user(0);
                }
            }
            
            if (place_meeting(x + vsp, y, obj_destructibles))
            {
                with (instance_place(x + vsp, y, obj_destructibles))
                {
                    DestroyedBy = other.id;
                    event_user(0);
                }
            }
        }
    }
}
