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

if (state != states.cheeseball && state != states.frozen)
    scr_scareenemy();

if (bombreset > 0)
    bombreset--;

if (ragereset > 0)
    ragereset--;

if (state == states.frozen)
    bombreset = 0;

if (point_in_rectangle(obj_player.x, obj_player.y, x - 300, y - 50, x + 300, y + 50) && obj_player.state != states.door && obj_player.state != states.comingoutdoor && state != states.Nhookshot)
{
    if ((state == states.frozen || state == states.Nhookshot) && bombreset <= 0)
    {
        if (x != obj_player.x)
            image_xscale = -sign(x - obj_player.x);
        
        sprite_index = spr_beesoldier_intro;
    }
}

if (state != states.frozen && ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60))) && obj_player.state != states.cotton && obj_player.state != states.cottondrill && obj_player.state != states.door && obj_player.state != states.cottonroll && obj_player.state != 112)
{
    if (state != states.boxxedpep && state != states.cheeseball && bombreset <= 0 && obj_player.state != states.cotton)
    {
        if (state == states.Nhookshot || state == states.frozen)
        {
            image_index = 0;
            state = states.cheeseball;
            
            if (x != obj_player.x)
                image_xscale = -sign(x - obj_player.x);
            
            sprite_index = spr_throw;
        }
    }
}

movespeed = 4;
