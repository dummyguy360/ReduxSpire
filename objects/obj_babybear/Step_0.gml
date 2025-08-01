movespeed = 5;

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

if (ragereset > 0)
    ragereset--;

if (point_in_rectangle(obj_player.x, obj_player.y, x - 200, y - 50, x + 200, y + 50) && obj_player.state != states.door && obj_player.state != states.comingoutdoor)
{
    if (state != states.stunned && state == states.Nhookshot && ragereset <= 0)
    {
        state = states.stunned;
        sprite_index = ragespr;
        
        if (x != obj_player.x)
            image_xscale = -sign(x - obj_player.x);
        
        ragereset = 100;
        image_index = 0;
        image_speed = 0.35;
        flash = 1;
        alarm[4] = 5;
        create_heat_afterimage(afterimages.fade);
    }
}

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

if (hitboxcreate == 0 && animation_end(undefined, 10) && state == states.stunned)
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
    }
}

if (grounded && state != states.stunned)
    scr_scareenemy();

scr_commonenemy();
