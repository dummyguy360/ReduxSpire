function point_in_camera(arg0, arg1, arg2)
{
    var cam_x = camera_get_view_x(arg2);
    var cam_y = camera_get_view_y(arg2);
    var cam_w = camera_get_view_width(arg2);
    var cam_h = camera_get_view_height(arg2);
    return point_in_rectangle(arg0, arg1, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h);
}

function bbox_in_camera(arg0)
{
    var cam_x = camera_get_view_x(arg0);
    var cam_y = camera_get_view_y(arg0);
    var cam_w = camera_get_view_width(arg0);
    var cam_h = camera_get_view_height(arg0);
    return rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h);
}

function bbox_in_camera_ext(arg0, arg1)
{
    var cam_x = camera_get_view_x(arg0);
    var cam_y = camera_get_view_y(arg0);
    var cam_w = camera_get_view_width(arg0);
    var cam_h = camera_get_view_height(arg0);
    return rectangle_in_rectangle(bbox_left - arg1, bbox_top - arg1, bbox_right + arg1, bbox_bottom + arg1, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h);
}

function camera_shake(arg0, arg1)
{
    with (obj_camera)
    {
        shake_mag = arg0;
        shake_mag_acc = arg1 / room_speed;
    }
    
    return true;
}

function camera_get_position_struct(arg0, arg1 = -4) constructor
{
    var _cam_x = camera_get_view_x(arg0);
    var _cam_y = camera_get_view_y(arg0);
    var _cam_width = camera_get_view_width(arg0);
    var _cam_height = camera_get_view_height(arg0);
    centeredcam_x = _cam_x + (_cam_width / 2);
    centeredcam_y = _cam_y + (_cam_height / 2);
    cam_x = _cam_x;
    cam_y = _cam_y;
    
    if (arg1 != -4)
    {
        centeredcam_x -= arg1[0];
        centeredcam_y -= arg1[1];
    }
}

function screen_flash(arg0)
{
    global.screenflash = arg0;
}

function pummel_dim()
{
}
