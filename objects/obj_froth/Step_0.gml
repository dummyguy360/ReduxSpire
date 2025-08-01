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

if (state == states.cheesepep)
    grav = 0.5;
else
    grav = 0;

if (state == states.Nhookshot)
    state = states.bombpep;

scr_commonenemy();

if (state != states.bombpep || substate == 0)
    scr_scareenemy();

if (state != states.bombpep)
    substate = 0;

if (place_meeting(x, y + 1, obj_player) && state == states.bombpep && substate == 1 && sprite_index == spr_snowclouddiveboil)
{
    with (obj_player)
    {
        hsp = 0;
        player_x = x;
        state = states.bushdisguise;
        sprite_index = spr_player_frothstuck;
        bushdetection = 3;
    }
    
    instance_destroy();
}

if (substate == 0)
    y = approach(y, ystart, 2);
