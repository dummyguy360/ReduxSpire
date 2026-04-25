if (place_meeting(x, y, obj_player) && ds_list_find_index(global.saveroom, id) == -1)
{
    ds_list_add(global.saveroom, id);
    visited = 1;
}

if (ds_list_find_index(global.saveroom, id) != -1)
{
    sprite_index = spr_worlddoor_open;
    visited = 1;
}

with (instance_place(x, y, obj_doortrigger_parent))
    other.targetDoor = id_door;

TrueVisible = visible;
visible = true;

if (ds_list_find_index(global.saveroom, id) != -1)
{
    sprite_index = spriteDoorUnlocked;
    image_index = image_number - 1;
    image_speed = 0;
}
