depth = -3;

revealCondition = function()
{
    return place_meeting(x, y, obj_player);
};

secretAlpha = 1;
secretSurface = noone;
revealActivated = false;

for (var i = 0; i < array_length(layerArray); i++)
{
    var arg = layerArray[i];
    var layerid = layer_get_id(arg);
    layer_set_visible(layerid, false);
    layerArray[i] = layerid;
}

var _f = function(arg0, arg1)
{
    return -(layer_get_depth(arg0) - layer_get_depth(arg1));
};

array_sort(layerArray, _f);
