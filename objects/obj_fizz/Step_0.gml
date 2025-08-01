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

if (bombreset > 0)
    bombreset--;

if (((obj_player.x > (x - 50) && obj_player.x < (x + 50)) && (y <= (obj_player.y + 300) && y >= (obj_player.y - 300))) && obj_player.state != states.cotton && obj_player.state != states.cottondrill && obj_player.state != states.door && obj_player.state != states.cottonroll && obj_player.state != 112)
{
    if (state != states.cheeseball && bombreset <= 0 && obj_player.state != states.cotton)
    {
        if (state == states.bombpep)
        {
            image_index = 0;
            state = states.cheeseball;
            
            if (x != obj_player.x)
                image_xscale = -sign(x - obj_player.x);
            
            sprite_index = spr_throw;
        }
    }
}

if (state == states.cheesepep)
    grav = 0.5;
else
    grav = 0;

if (state == states.Nhookshot)
    state = states.bombpep;

scr_commonenemy();

if (state != states.cheeseball)
    scr_scareenemy();
