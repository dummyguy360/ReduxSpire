function scr_secrettiles_add(arg0)
{
    if (object_index != obj_secretwall)
        return false;
    
    if (is_undefined(arg0))
        return false;
    
    for (var i = 0; i < argument_count; i++)
    {
        var arg = argument[i];
        var layerid = layer_get_id(arg);
        layer_set_visible(layerid, false);
        array_push(layerArray, layerid);
    }
    
    var _f = function(arg0, arg1)
    {
        return -(layer_get_depth(arg0) - layer_get_depth(arg1));
    };
    
    array_sort(layerArray, _f);
    return true;
}

function add_secrettiles(arg0)
{
    for (var i = 0; i < array_length(global.secret_layers); i++)
    {
        var a = global.secret_layers[i];
        surface_free(a.surf);
    }
    
    global.secret_layers = [];
    
    for (var i = 0; i < argument_count; i++)
    {
        var arg = argument[i];
        var layerid = layer_get_id(arg);
        layer_set_visible(layerid, false);
        var name = layer_get_name(layerid);
        array_push(global.secret_layers, 
        {
            nm: name,
            alpha: 1,
            surf: -4
        });
    }
    
    var _f = function(arg0, arg1)
    {
        return -(layer_get_depth(arg0.nm) - layer_get_depth(arg1.nm));
    };
    
    array_sort(global.secret_layers, _f);
    return true;
}
