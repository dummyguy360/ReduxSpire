if (state != states.stunned && state != states.knightpepattack && grounded && !pizzano)
    scr_scareenemy();

if (state == states.cheesepep && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != states.cheesepep && state != states.pistolaim)
    birdcreated = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (state != states.cheesepepstick)
    depth = 0;

if (state != states.cheesepep && state != states.pistolaim)
    thrown = 0;

if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox, 
    {
        baddieID: other.id
    }))
    {
        sprite_index = other.sprite_index;
        mask_index = other.mask_index;
        baddieID = other.id;
        other.boundbox = 1;
    }
}

if (hitboxcreate == 0 && (state == states.knightpepattack || state == states.stunned))
{
    hitboxcreate = 1;
    
    with (instance_create(x, y, obj_forkhitbox, 
    {
        ID: other.id
    }))
    {
        ID = other.id;
        image_xscale = other.image_xscale;
        image_index = other.image_index;
        depth = -1;
        
        if (other.state != states.stunned)
        {
            mask_index = spr_sluggy_jumphitbox;
            sprite_index = spr_sluggy_jumphitbox;
        }
    }
}

if (state != states.frozen && state != states.boxxedpep && state != states.cheesepep && state != states.cheesepepstick && state != states.chainsawbump && state != states.knightpepattack && state != states.meteorpep && idletimer > 0)
    idletimer--;

if (state != states.frozen && state != states.boxxedpep && state != states.cheesepep && state != states.cheesepepstick && state != states.chainsawbump && state != states.knightpepattack && state != states.meteorpep && jumptimer > 0)
    jumptimer--;

var _isplayerpresent = jumptimer <= 0 && (obj_player.x > (x - 250) && obj_player.x < (x + 250) && y <= (obj_player.y + 200) && y >= (obj_player.y - 16));

if (grounded && (!use_heat() || ragereset <= 0) && (_isplayerpresent || (scr_solid(x + (image_xscale * 32), y, true) && !scr_solid(x + (image_xscale * 32), y - 100, true) && !scr_slope_ext(x + (image_xscale * 32), y) && !scr_slope_ext(x, y + 1))))
{
    if (state == states.Nhookshot)
    {
        if (!use_heat())
        {
            if (_isplayerpresent)
                image_xscale = -sign(x - obj_player.x);
            
            state = states.knightpepattack;
            ragereset = 200;
            sprite_index = spr_sluggy_jumpstart;
            image_index = 0;
            movespeed = 0;
            hsp = 0;
            vsp = 0;
        }
        else
        {
            if (_isplayerpresent)
                image_xscale = -sign(x - obj_player.x);
            
            state = states.stunned;
            ragereset = 100;
            sprite_index = spr_cotton_attack;
            image_index = 0;
            movespeed = 8;
            vsp = 0;
        }
    }
}

scr_commonenemy();
