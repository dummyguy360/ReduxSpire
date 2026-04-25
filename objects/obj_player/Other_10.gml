global.GMLIVE_realroom = room;
var yoffset = 160;
var _door = obj_doortrigger_parent;
var is_box_above = false;

with (obj_doortrigger_parent)
{
    if (other.targetDoor == id_door)
        _door = id;
    
    if (other.box && place_meeting(x, y - 1, obj_boxofpizza))
        is_box_above = true;
}

if (instance_exists(_door))
{
    if (hallway == 1)
        x = _door.x + (_door.sprite_width / 2) + (hallwaydirection * 96);
    else if (vertical == 1)
        x = _door.x + verticaloffset;
    else if (box == 1 || secretPortal == 1)
        x = _door.x + 32;
    else
        x = _door.x + 16;
    
    if (vertical)
        y = _door.y + (hallwaydirection * yoffset);
    else if (box && is_box_above)
        y = _door.y - 1;
    else
        y = _door.y - 14;
    
    show_debug_message("Door Trigger \"" + string(targetDoor) + "\" found");
}
else
    show_debug_message("Door Trigger Instance not found");

if (place_meeting(x, y, obj_exitgate))
{
    with (instance_place(x, y, obj_exitgate))
        other.x = x;
}

with (obj_coneball)
{
    x = other.x;
    y = other.y;
    
    if (other.hallway)
        x += (-other.hallwaydirection * 200);
    else if (other.vertical)
        y += (-other.hallwaydirection * 200);
    else
        image_alpha = 0;
}

if (state == states.door && room != rank_room)
{
    image_index = 0;
    
    if (box && is_box_above)
    {
        hsp = 0;
        vsp = 0;
        verticalMovespeed = 0;
        movespeed = 0;
        jumpstop = true;
        state = states.jump;
        sprite_index = spr_fall;
        grounded = false;
    }
    else if (box && !is_box_above)
    {
        hsp = 0;
        vsp = 0;
        verticalMovespeed = 0;
        movespeed = 0;
        jumpstop = true;
        state = states.normal;
        sprite_index = spr_idle;
        grounded = true;
    }
}

hallway = 0;
box = 0;
vertical = false;
secretPortal = false;
roomstartx = x;
roomstarty = y;

if ((!room_exists(targetRoom) && room == rm_missing) || targetRoom == rm_missing)
    show_debug_message("Room \"" + string(targetRoom) + "\" does not exist. Sent Player to \"rm_missing\"");
