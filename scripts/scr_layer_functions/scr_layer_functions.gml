function layer_tilemap_get_id_fixed(arg0)
{
    if (layer_exists(arg0))
    {
        var els = layer_get_all_elements(arg0);
        var n = array_length(els);
        
        for (var i = 0; i < n; i++)
        {
            var el = els[i];
            
            if (layer_get_element_type(el) == 5)
                return el;
        }
    }
    
    return -1;
}

function layer_background_get_id_fixed(arg0)
{
    if (layer_exists(arg0))
    {
        var els = layer_get_all_elements(arg0);
        var n = array_length(els);
        
        for (var i = 0; i < n; i++)
        {
            var el = els[i];
            
            if (layer_get_element_type(el) == 1)
                return el;
        }
        
        return -1;
    }
    
    return -1;
}

function layer_asset_get_id_fixed(arg0)
{
    if (layer_exists(arg0))
    {
        var els = layer_get_all_elements(arg0);
        var n = array_length(els);
        
        for (var i = 0; i < n; i++)
        {
            var el = els[i];
            
            if (layer_get_element_type(el) == 4)
                return el;
        }
        
        return -1;
    }
    
    return -1;
}

function layer_change_background(arg0, arg1)
{
    if (arg0 != arg1)
    {
        var a = layer_get_all();
        
        for (var i = 0; i < array_length(a); i++)
        {
            var back_id = layer_background_get_id_fixed(a[i]);
            
            if (layer_background_get_sprite(back_id) == arg0)
                layer_background_sprite(back_id, arg1);
        }
    }
}

function layer_change_tileset(arg0, arg1)
{
    if (arg0 != arg1)
    {
        var a = layer_get_all();
        
        for (var i = 0; i < array_length(a); i++)
        {
            var tile_id = layer_tilemap_get_id_fixed(a[i]);
            
            if (tilemap_get_tileset(tile_id) == arg0)
                tilemap_tileset(tile_id, arg1);
        }
    }
}

function get_all_layer_type(arg0 = 0)
{
    var layernum = 0;
    var a = layer_get_all();
    var layers;
    
    for (var i = 0; i < array_length(a); i++)
    {
        var els = layer_get_all_elements(a[i]);
        
        if (layer_get_element_type(els) == arg0)
            layers[layernum++] = a[i];
    }
    
    if (!layernum)
        return -4;
    
    return layers;
}
