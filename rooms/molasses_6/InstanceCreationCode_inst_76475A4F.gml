condition = function()
{
    return !instance_exists(inst_4BC0C0A1);
};

output = function()
{
    with (inst_6DCC48D)
    {
        if (!(ds_list_find_index(global.saveroom, id) != -1))
        {
            instance_create(x, y, obj_cloudeffect);
            
            repeat (3)
                instance_create(x + random_range(-5, 5), y + random_range(-5, 5), obj_cloudeffect);
            
            instance_destroy();
        }
    }
    
    with (inst_49BB99B8)
    {
        if (!(ds_list_find_index(global.saveroom, id) != -1))
        {
            instance_create(x, y, obj_cloudeffect);
            
            repeat (3)
                instance_create(x + random_range(-5, 5), y + random_range(-5, 5), obj_cloudeffect);
            
            instance_destroy();
        }
    }
    
    with (inst_4FCB0E73)
    {
        if (!(ds_list_find_index(global.saveroom, id) != -1))
        {
            instance_create(x, y, obj_cloudeffect);
            
            repeat (3)
                instance_create(x + random_range(-5, 5), y + random_range(-5, 5), obj_cloudeffect);
            
            instance_destroy();
        }
    }
};
