if (ds_list_find_index(global.baddieroom, id) == -1)
{
    if (thrown)
    {
        with (instance_create(x, y, obj_bombexplosionconeboy))
            frog = true;
    }
    else if (!setfordeath)
    {
        with (instance_create(x, y, obj_gigacherrydead))
            movespeed = 8;
    }
}

event_inherited();
