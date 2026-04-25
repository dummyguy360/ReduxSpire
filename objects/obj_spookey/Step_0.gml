if (obj_player.sprite_index == spr_player_PZ_superTaunt_1 || obj_player.sprite_index == spr_player_PZ_superTaunt_2 || obj_player.sprite_index == spr_player_PZ_superTaunt_3 || obj_player.sprite_index == spr_player_PZ_superTaunt_4)
{
    if (sprite_index != spr_spookey_supertaunt)
    {
        sprite_index = spr_spookey_supertaunt;
        image_index = 0;
    }
    
    var _total_frame = 8;
    var _player_pct = obj_player.image_index / _total_frame;
    image_index = floor(_player_pct * (image_number - 1));
    image_speed = 0;
    exit;
}

if (obj_player.sprite_index == spr_player_PZ_gotKey || obj_player.state == states.keyget || (obj_player.state == states.actor && !instance_exists(obj_rosette) && !instance_exists(obj_gnome)))
{
    x = obj_player.x;
    y = obj_player.y;
    visible = 0;
    exit;
}
else
{
    visible = obj_player.visible;
}

var tgtX = obj_player.x + (obj_player.xscale * -30);
var tgtY = obj_player.y - 40;
var tgtMVSP = distance_to_point(tgtX, tgtY) / 200;

if (obj_player.state == states.keyget || (obj_player.state == states.actor && !instance_exists(obj_rosette) && !instance_exists(obj_gnome)))
{
    tgtMVSP = 0.8;
    tgtX = obj_player.x + (25 * obj_player.xscale);
}

var _d = point_direction(x, y, tgtX, tgtY);

if (sprite_index != spr_spookey_supertaunt)
{
    var hsp = lengthdir_x((18 * tgtMVSP) + 0.5, _d);
    var vsp = lengthdir_y((18 * tgtMVSP) + 0.5, _d);
    x = approach(x, tgtX, hsp);
    y = approach(y, tgtY, vsp);
    
    if (distance_to_object(obj_player) <= 45)
    {
        if (approachval < 3)
            approachval = lerp(approachval, 3, 0.1);
        
        x = approach(x, tgtX, approachval);
        y = approach(y, tgtY, approachval);
    }
    else
    {
        approachval = 0;
    }
}

x = round(x);
y = round(y);

if (!global.key_inv)
    instance_destroy();

if (x == xprevious)
    sprite_index = spr_spookey;
else
    sprite_index = spr_spookey_move;

if (animation_end() && sprite_index == spr_spookey_supertaunt)
    sprite_index = spr_spookey_idle;

if (x != obj_player.x)
    image_xscale = abs(image_xscale) * -sign(x - obj_player.x);

if (blurEffectTimer-- <= 0 && visible)
{
    if (blurEffectTimer < 0)
    {
        with (instance_create(x, y, obj_spookey_aftereffect))
        {
            image_index = max(other.image_index - 1, 0);
            image_alpha = 0.6;
            image_xscale = other.image_xscale;
            sprite_index = other.sprite_index;
        }
        
        blurEffectTimer = 2;
    }
}

image_speed = 0.35;
