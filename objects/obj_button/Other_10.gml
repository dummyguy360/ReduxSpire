if (currentState == UnknownEnum.Value_0)
{
    currentState = UnknownEnum.Value_2;
    sprite_index = spr_Lowering;
    
    if (save_trigger && ds_list_find_index(global.saveroom, id) == -1)
        ds_list_add(global.saveroom, id);
}
