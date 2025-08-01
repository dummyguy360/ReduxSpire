global.MyCollisionList = ds_list_create();

function instance_place_list_collision(arg0, arg1, arg2 = UnknownEnum.Value_0, arg3 = undefined)
{
    var collided = 0;
    var check_slopes = (Exclude.SLOPES & arg2) != Exclude.SLOPES;
    var check_solids = (Exclude.SOLIDS & arg2) != Exclude.SOLIDS;
    var check_platforms = (Exclude.PLATFORMS & arg2) != Exclude.PLATFORMS;
    var check_moving = (Exclude.MOVING & arg2) != Exclude.MOVING;
    
    if (check_solids)
    {
        collided += instance_place_list_solid(arg0, arg1, arg3);
        collided += instance_place_list_slopeSolid(arg0, arg1, arg3);
    }
    
    if (check_slopes)
    {
        if (check_solids)
            collided += instance_place_list_slope(arg0, arg1, arg3);
        
        if (check_platforms)
            collided += instance_place_list_slopePlatform(arg0, arg1, arg3);
    }
    
    if (check_platforms)
    {
        collided += instance_place_list_platform(arg0, arg1, arg3);
        collided += instance_place_list_sidePlatform(arg0, arg1, arg3);
    }
    
    if (check_moving)
        collided += instance_place_list_movingPlatform(arg0, arg1, arg3);
    
    return collided;
}

function place_meeting_collision(arg0, arg1, arg2 = UnknownEnum.Value_0)
{
    var check_slopes = (Exclude.SLOPES & arg2) != Exclude.SLOPES;
    var check_solids = (Exclude.SOLIDS & arg2) != Exclude.SOLIDS;
    var check_platforms = (Exclude.PLATFORMS & arg2) != Exclude.PLATFORMS;
    var check_moving = (Exclude.MOVING & arg2) != Exclude.MOVING;
    
    if (check_solids)
    {
        if (place_meeting_solid(arg0, arg1))
            return true;
        
        if (place_meeting_slopeSolid(arg0, arg1))
            return true;
    }
    
    if (check_slopes)
    {
        if (check_solids)
        {
            if (place_meeting_slope(arg0, arg1, false))
                return true;
        }
        
        if (check_platforms)
        {
            if (place_meeting_slopePlatform(arg0, arg1))
                return true;
        }
    }
    
    if (check_platforms)
    {
        if (place_meeting_platform(arg0, arg1))
            return true;
        
        if (place_meeting_sidePlatform(arg0, arg1))
            return true;
    }
    
    if (check_moving)
    {
        if (place_meeting_movingPlatform(arg0, arg1))
            return true;
    }
    
    return false;
}

function position_meeting_collision(arg0, arg1, arg2 = UnknownEnum.Value_0)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = place_meeting_collision(arg0, arg1, arg2);
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_solid(arg0, arg1, arg2 = 367, arg3 = undefined)
{
    if (place_meeting(arg0, arg1, arg2))
    {
        var solid_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        var collided = 0;
        
        if (solid_number > 0)
        {
            for (var i = 0; i < solid_number; i++)
            {
                var solid_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(solid_object, "canCollide"))
                    _can_collide = solid_object.canCollide(object_index);
                
                if (_can_collide == true)
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, solid_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function place_meeting_solid(arg0, arg1, arg2 = 367)
{
    return instance_place_list_solid(arg0, arg1, arg2) > 0;
}

function position_meeting_solid(arg0, arg1, arg2 = 367)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_solid(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_platform(arg0, arg1, arg2 = 510, arg3 = undefined)
{
    var collided = 0;
    
    if (place_meeting(arg0, arg1, arg2))
    {
        var platform_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        
        if (platform_number > 0)
        {
            for (var i = 0; i < platform_number; i++)
            {
                var platform_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(platform_object, "canCollide"))
                    _can_collide = platform_object.canCollide(object_index);
                
                var _check = (sign(platform_object.image_yscale) <= -1) ? (arg1 <= y) : (arg1 > y);
                
                if (_check == true && _can_collide && place_meeting(arg0, arg1, platform_object) && !place_meeting(arg0, y, platform_object))
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, platform_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function instance_place_list_sidePlatform(arg0, arg1, arg2 = 167, arg3 = undefined)
{
    var collided = 0;
    
    if (place_meeting(arg0, arg1, arg2))
    {
        var side_platform_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        
        if (side_platform_number > 0)
        {
            for (var i = 0; i < side_platform_number; i++)
            {
                var side_platform_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(side_platform_object, "canCollide"))
                    _can_collide = side_platform_object.canCollide(object_index);
                
                var _check = (sign(side_platform_object.image_xscale) < 0) ? (arg0 >= x) : (arg0 <= x);
                
                if (_check == true && _can_collide && place_meeting(arg0, arg1, side_platform_object) && !place_meeting(x, arg1, side_platform_object))
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, side_platform_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function place_meeting_platform(arg0, arg1, arg2 = 510)
{
    return instance_place_list_platform(arg0, arg1, arg2) > 0;
}

function position_meeting_platform(arg0, arg1, arg2 = 510)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_platform(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function place_meeting_sidePlatform(arg0, arg1, arg2 = 167)
{
    return instance_place_list_sidePlatform(arg0, arg1, arg2) > 0;
}

function position_meeting_sidePlatform(arg0, arg1, arg2 = 167)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_sidePlatform(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_movingPlatform(arg0, arg1, arg2 = 175, arg3 = undefined)
{
    var collided = 0;
    
    if (place_meeting(arg0, arg1, arg2))
    {
        var movingplatform_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        
        if (movingplatform_number > 0)
        {
            for (var i = 0; i < movingplatform_number; i++)
            {
                var movingplatform_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(movingplatform_object, "canCollide"))
                    _can_collide = movingplatform_object.canCollide(object_index);
                
                var _check = (sign(movingplatform_object.image_yscale) <= -1) ? (arg1 <= y) : (arg1 > y);
                
                if (_check == true && _can_collide && place_meeting(arg0, arg1, movingplatform_object) && !place_meeting(arg0, y, movingplatform_object))
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, movingplatform_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function place_meeting_movingPlatform(arg0, arg1, arg2 = 175)
{
    return instance_place_list_movingPlatform(arg0, arg1, arg2) > 0;
}

function position_meeting_movingPlatform(arg0, arg1, arg2 = 175)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_movingPlatform(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_slopePlatform(arg0, arg1, arg2 = 152, arg3 = undefined)
{
    var old_x = x;
    var old_y = y;
    var old_bbox_top = bbox_top;
    var old_bbox_bottom = bbox_bottom;
    x = arg0;
    y = arg1;
    var collided = 0;
    
    if (place_meeting(x, y, arg2))
    {
        var slopeplatform_number = instance_place_list(x, y, arg2, global.MyCollisionList, false);
        
        if (slopeplatform_number > 0)
        {
            for (var i = 0; i < slopeplatform_number; i++)
            {
                var slopeplatform_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(slopeplatform_object, "canCollide"))
                    _can_collide = slopeplatform_object.canCollide(object_index);
                
                if (_can_collide)
                {
                    var object_side = (slopeplatform_object.image_xscale > 0) ? bbox_right : bbox_left;
                    object_side = (object_side - x) + old_x;
                    var player_pos = point_direction(slopeplatform_object.x + slopeplatform_object.sprite_width, slopeplatform_object.y + slopeplatform_object.sprite_height, x, y);
                    var _check1;
                    
                    if (slopeplatform_object.image_yscale > 0)
                        _check1 = (slopeplatform_object.image_xscale > 0) ? (player_pos <= 180 && player_pos >= 90) : (player_pos <= 90 && player_pos >= 0);
                    else
                        _check1 = (slopeplatform_object.image_xscale > 0) ? (player_pos <= 270 && player_pos >= 180) : ((player_pos <= 360 || player_pos <= 0) && player_pos >= 270);
                    
                    var _check2 = !triangle_meeting(old_x, old_y, slopeplatform_object.x, slopeplatform_object.y + slopeplatform_object.sprite_height, slopeplatform_object.x + slopeplatform_object.sprite_width, slopeplatform_object.y, slopeplatform_object.x + slopeplatform_object.sprite_width, slopeplatform_object.y + slopeplatform_object.sprite_height);
                    var _check3 = (slopeplatform_object.image_xscale > 0) ? (object_side <= slopeplatform_object.bbox_left) : (object_side >= slopeplatform_object.bbox_right);
                    
                    if (_check1 && (_check2 || _check3) && (slopeplatform_object.image_yscale > 0) ? (old_bbox_bottom <= slopeplatform_object.bbox_bottom) : (old_bbox_top >= slopeplatform_object.bbox_top) && triangle_meeting(x, y, slopeplatform_object.x, slopeplatform_object.y + slopeplatform_object.sprite_height, slopeplatform_object.x + slopeplatform_object.sprite_width, slopeplatform_object.y, slopeplatform_object.x + slopeplatform_object.sprite_width, slopeplatform_object.y + slopeplatform_object.sprite_height))
                    {
                        collided++;
                        
                        if (!is_undefined(arg3))
                            ds_list_add(arg3, slopeplatform_object.id);
                        else
                            break;
                    }
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
        {
            x = old_x;
            y = old_y;
            return collided;
        }
    }
    
    x = old_x;
    y = old_y;
    return 0;
}

function place_meeting_slopePlatform(arg0, arg1, arg2 = 152)
{
    return instance_place_list_slopePlatform(arg0, arg1, arg2) > 0;
}

function position_meeting_slopePlatform(arg0, arg1, arg2 = 152)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_slopePlatform(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_slope(arg0, arg1, arg2 = 473, arg3 = undefined)
{
    if (place_meeting(arg0, arg1, arg2))
    {
        var slope_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        var collided = 0;
        
        if (slope_number > 0)
        {
            for (var i = 0; i < slope_number; i++)
            {
                var slope_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(slope_object, "canCollide"))
                    _can_collide = slope_object.canCollide(object_index);
                
                if (_can_collide == true && triangle_meeting(arg0, arg1, slope_object.x, slope_object.y + slope_object.sprite_height, slope_object.x + slope_object.sprite_width, slope_object.y, slope_object.x + slope_object.sprite_width, slope_object.y + slope_object.sprite_height))
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, slope_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function place_meeting_slope(arg0, arg1, arg2 = true, arg3 = 473)
{
    var _check2 = arg2 ? place_meeting_slopePlatform(arg0, arg1) : false;
    return instance_place_list_slope(arg0, arg1, arg3) > 0 || _check2;
}

function position_meeting_slope(arg0, arg1, arg2 = 473)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_slope(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}

function instance_place_list_slopeSolid(arg0, arg1, arg2 = 473, arg3 = undefined)
{
    if (place_meeting(arg0, arg1, arg2))
    {
        var slope_number = instance_place_list(arg0, arg1, arg2, global.MyCollisionList, false);
        var collided = 0;
        
        if (slope_number > 0)
        {
            for (var i = 0; i < slope_number; i++)
            {
                var slope_object = ds_list_find_value(global.MyCollisionList, i);
                var _can_collide = true;
                
                if (variable_instance_exists(slope_object, "canCollide"))
                    _can_collide = slope_object.canCollide(object_index);
                
                var _xscale = arg0 - x;
                var _check1 = sign(slope_object.image_xscale) != _xscale && _xscale != 0;
                var _check2 = (slope_object.image_yscale < 0) ? (bbox_bottom <= slope_object.bbox_top) : (bbox_top >= slope_object.bbox_bottom);
                
                if (_can_collide == true && (_check1 || _check2) && triangle_meeting(arg0, arg1, slope_object.x, slope_object.y + slope_object.sprite_height, slope_object.x + slope_object.sprite_width, slope_object.y, slope_object.x + slope_object.sprite_width, slope_object.y + slope_object.sprite_height))
                {
                    collided++;
                    
                    if (!is_undefined(arg3))
                        ds_list_add(arg3, slope_object.id);
                    else
                        break;
                }
            }
        }
        
        ds_list_clear(global.MyCollisionList);
        
        if (collided > 0)
            return collided;
    }
    
    return 0;
}

function place_meeting_slopeSolid(arg0, arg1, arg2 = 473)
{
    return instance_place_list_slopeSolid(arg0, arg1, arg2) > 0;
}

function position_meeting_slopeSolid(arg0, arg1, arg2 = 473)
{
    var old_mask = mask_index;
    mask_index = spr_pixel;
    var check_collision = instance_place_list_slopeSolid(arg0, arg1, arg2) > 0;
    mask_index = old_mask;
    return check_collision;
}
