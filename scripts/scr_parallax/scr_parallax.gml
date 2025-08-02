global.ParallaxMap = ds_map_create();

function scr_addParallaxLayer(arg0, arg1, arg2 = [])
{
    ds_map_set(global.ParallaxMap, arg0, 
    {
        func: arg1,
        args: arg2
    });
    exit;
}

function defaultParallax(arg0, arg1)
{
    x += (camx * arg0);
    y += (camy * arg1);
}

function defaultParallaxGround(arg0, arg1)
{
    var _sprite_height = sprite_get_height(layer_background_get_sprite(layer_background_get_id(id)));
    var _height = room_height - _sprite_height;
    var cam_y = clamp(camy, _height - 200, room_height);
    x += (camx * arg0);
    y += (cam_y - clamp(cam_y * arg1 * (camh / _height), 0, _sprite_height - camh));
}

function defaultParallaxH(arg0, arg1)
{
    x += (camx * arg0);
    y += (camy - clamp(camy * arg1 * (camh / room_height), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(id))) - camh));
}

function defaultParallaxV(arg0, arg1)
{
    x += (camx - clamp(camx * arg0 * (camw / room_width), 0, sprite_get_width(layer_background_get_sprite(layer_background_get_id(id))) - camw));
    y += (camy * arg1);
}

function defaultParallaxFar(arg0, arg1)
{
    x += (camx - clamp(camx * arg0 * (camw / room_width), 0, sprite_get_width(layer_background_get_sprite(layer_background_get_id(id))) - camw));
    y += (camy - clamp(camy * arg1 * (camh / room_height), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(id))) - camh));
}

function parallaxZigZagV(arg0, arg1)
{
    var time = global.ScrollOffset / 60;
    var _spd = layer_get_vspeed(id);
    var _sin = sin(time) * _spd;
    x += (camx * arg0);
    y += ((camy * arg1) + _sin);
    y -= yShift;
}

function parallaxZigZagVFar(arg0, arg1)
{
    var time = global.ScrollOffset / 60;
    var _spd = vspeed;
    var _sin = sin(time) * _spd;
    x += (camx - clamp(camx * arg0 * (camw / room_width), 0, sprite_get_width(layer_background_get_sprite(layer_background_get_id(id))) - camw));
    y += (_sin + (camy - clamp(camy * arg1 * (camh / room_height), 0, sprite_get_height(layer_background_get_sprite(layer_background_get_id(id))) - camh)));
    y -= yShift;
}
