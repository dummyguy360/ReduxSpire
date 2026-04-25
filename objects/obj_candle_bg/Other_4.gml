if (ds_list_find_index(global.saveroom, id) != -1)
{
    has_changed = true;
    sprite_index = global.saveroom[| ds_list_find_index(global.saveroom, id) + 1];
}
