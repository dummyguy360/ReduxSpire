if (flying == true)
{
    grav = 0;
    movespeed = 0;
}

if (state == states.Nhookshot)
{
    if (!instance_exists(sightID) && !alarmed)
    {
        sightID = instance_create(x, y, obj_guardhitbox);
        sightID.ID = id;
    }
    
    walkspr = alarmed ? spr_guard_run : spr_guard;
    
    if (state == states.Nhookshot && alarmed)
        movespeed = 4;
    
    if (alarm[3] > 0)
        hsp = 0;
}

if (state == states.cheesepep || state == states.boxxedpep || state == states.pistolaim || state == states.cheesepepstick || alarmed)
{
    alarm[3] = -1;
    
    if (instance_exists(sightID))
        instance_destroy(sightID);
}

if (point_in_circle(x, y, obj_player.x + (75 * obj_player.xscale), obj_player.y, 125) && obj_player.inhaling && state != states.portal)
    state = states.portal;

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

if (boundbox == 0 && state != states.portal)
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

scr_commonenemy();
scr_scareenemy();
var _x = x + (sign(image_xscale) * 150);

if (stationary == true)
    movespeed = 0;
