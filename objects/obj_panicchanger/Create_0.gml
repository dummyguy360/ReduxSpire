fadein = 0;
var _depth = 0;
var olddepth = 0;
var a = layer_get_all();

for (var i = 0; i < array_length(a); i++)
{
    var tile_id = layer_tilemap_get_id_fixed(layer_get_name(a[i]));
    
    if (tile_id != -1)
    {
        _depth = layer_get_depth(a[i]);
        
        if (_depth >= olddepth)
            olddepth = _depth;
    }
}

fadealpha = 2;
scr_escapebgs();
depth = -600;
obj_tv.tvbg = spr_tvbgescape;

with (obj_collectEscape)
{
    image_alpha = 1;
    instance_create(x, y, obj_poofeffect);
}

with (obj_bigcollectEscape)
{
    image_alpha = 1;
    instance_create(x, y, obj_poofeffect);
}
