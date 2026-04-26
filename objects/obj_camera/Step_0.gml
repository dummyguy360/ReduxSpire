var _is_region_active = false;
var _region = noone;
var _debugZOOM = false;

if (DEBUG && keyboard_check(ord("C")))
    _debugZOOM = true;

with (obj_cameraRegion)
{
    if (Region_active == true && activationCode())
    {
        _region = id;
        
        with (other)
        {
            if (_region.ClampRight)
                Camera_width = lerp(Camera_width, _region.x + _region.sprite_width, 0.2);
            else
                Camera_width = lerp(Camera_width, room_width, 0.1);
            
            if (_region.ClampBottom)
                Camera_height = lerp(Camera_height, _region.y + _region.sprite_height, 0.2);
            else
                Camera_height = lerp(Camera_height, room_height, 0.1);
            
            if (_region.ClampLeft)
                Camera_xorigin = lerp(Camera_xorigin, _region.x, 0.2);
            else
                Camera_xorigin = lerp(Camera_xorigin, 0, 0.1);
            
            if (_region.ClampTop)
                Camera_yorigin = lerp(Camera_yorigin, _region.y, 0.2);
            else
                Camera_yorigin = lerp(Camera_yorigin, 0, 0.1);
            
            if (_debugZOOM == false)
                cam_lzoom = lerp(cam_lzoom, _region.zoom, 0.2);
            
            cam_langle = lerp(cam_langle, -_region.image_angle, 0.2);
            _is_region_active = true;
        }
    }
}

if (!_is_region_active)
{
    Camera_width = lerp(Camera_width, room_width, 0.1);
    Camera_height = lerp(Camera_height, room_height, 0.1);
    Camera_xorigin = lerp(Camera_xorigin, 0, 0.1);
    Camera_yorigin = lerp(Camera_yorigin, 0, 0.1);
    
    if (_debugZOOM == false)
        cam_lzoom = lerp(cam_lzoom, 1, 0.1);
    
    cam_langle = lerp(cam_langle, 0, 0.1);
}

global.targetCamX = obj_player.x;
global.targetCamY = obj_player.y - 32;

if (room == timesuproom || room == rank_room || room == rm_credits || room == rm_titlecard || room == hub_w1 || room == hub_w2 || room == tutorial_1 || instance_exists(obj_bosscontroller))
    DrawHUD = 0;
else
    DrawHUD = 1;

if (get_panic() && !global.freezeframe)
{
    var _oldcollect = global.collect;
    
    if (global.fill > global.maxwave)
        global.maxwave = global.fill;
    
    if (!global.freezeframe)
    {
        if (!obj_tv.sucroseTimer || obj_tv.target_fill >= global.fill)
            global.fill--;
        
        if (((global.fill > 0 && (global.fill % 60) == 0) || (global.fill <= 0 && (abs(global.fill) % 10) == 0)) && global.collect >= 5)
        {
            global.collect -= 5;
            
            with (instance_create(x, y, obj_pointLoseNumber))
            {
                image_blend = c_red;
                number = string(global.collect - _oldcollect);
            }
        }
    }
    
    if (global.panic && global.fill <= 0)
    {
        if (!instance_exists(obj_coneball) && room != timesuproom)
            instance_create(obj_player.x, obj_player.y, obj_coneball);
    }
    
    global.greyscalefade = approach(global.greyscalefade, 0, 0.005);
    
    if (global.screentilt)
        camera_set_view_angle(view_camera[0], scr_sin(3.5 * clamp(global.wave / global.maxwave, 0, 1), 65 - (5 * clamp(global.wave / global.maxwave, 0, 1))));
    
    if (global.panicbg)
        global.wave = clamp(clamp(global.wave + (60 / room_speed), 0, global.maxwave - global.fill), 0, global.maxwave);
    
    panicshake = 1;
    panicshakeacc = 3 / room_speed;
}
else
{
    panicshake = 0;
    panicshakeacc = 0;
    
    if (!global.freezeframe)
        camera_set_view_angle(view_camera[0], 0);
}

if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}

global.dancetimer = approach(global.dancetimer, 0, 1);
global.hitstunalarm = approach(global.hitstunalarm, -1, 1);

if (global.hitstunalarm <= 0)
    global.freezeframe = false;

if (frozen == true && global.freezeframe == false)
{
    for (var i = 0; i < 3; i++)
        alarm_set(i, frozenalarm[i]);
    
    frozen = false;
}

if (room != realtitlescreen && room != rm_introVideo && !instance_exists(obj_startgate) && room != scootercutsceneidk && room != outer_room1 && room != outer_room2 && room != hub_w1 && room != hub_w2 && room != palroom && room != rm_titlecard)
{
    if (!global.freezeframe && obj_player.state != states.frozen && obj_player.state != states.gottreasure && room != rank_room && !instance_exists(obj_endlevelfade))
    {
        global.playmiliseconds += 1;
        
        if (global.playmiliseconds >= 60)
        {
            global.playmiliseconds = 0;
            global.playseconds += 1;
            
            if (global.playseconds >= 60)
            {
                global.playseconds = 0;
                global.playminutes += 1;
                
                if (global.playminutes >= 60)
                {
                    global.playminutes = 0;
                    global.playhour += 1;
                }
            }
        }
    }
}
else
{
    global.playmiliseconds = 0;
    global.playseconds = 0;
    global.playminutes = 0;
    global.playhour = 0;
}

panicshake = approach(panicshake, 0, panicshakeacc);

if (shake_mag > 0 && !global.freezeframe)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

var lspd = 0.25;
cam_angle = lerp(cam_angle, cam_langle, lspd);
cam_zoom = lerp(cam_zoom, cam_lzoom, lspd);
camera_set_view_angle(view_camera[0], cam_angle + camera_get_view_angle(view_camera[0]));
var vw = cam_w * cam_zoom;
var vh = cam_h * cam_zoom;
camera_set_view_size(view_camera[0], vw, vh);

if (instance_exists(obj_player) && obj_player.state != states.timesup && obj_player.state != states.gameover)
{
    var target = 
    {
        x: global.targetCamX,
        y: global.targetCamY
    };
    var _cam_x = target.x - (vw / 2);
    var _cam_y = target.y - (vh / 2);
    var _shake_x = 0;
    var _shake_y = 0;
    
    if (!global.freezeframe)
    {
        var _player = obj_player;
        var _targetcharge = 0;
        var _tspeed = 6;
        
        if (_player.state == states.mach2 || _player.state == states.mach3)
        {
            _targetcharge = ((_player.xscale * _player.movespeed) / 4) * 50;
            _tspeed = 0.3;
            chargecamera = approach(chargecamera, _targetcharge, _tspeed);
        }
        else if (_player.state == states.climbceiling)
        {
            _targetcharge = ((-_player.xscale * _player.movespeed) / 4) * 50;
            _tspeed = 0.3;
            chargecamera = approach(chargecamera, _targetcharge, _tspeed);
        }
        else if (abs(_player.hsp) >= 16 && _player.state != states.climbdownwall && _player.state != states.climbwall && _player.state != states.Sjump)
        {
            _targetcharge = ((sign(_player.hsp) * abs(_player.hsp)) / 4) * 50;
            _tspeed = 2;
            
            if (sign(chargecamera) != sign(_player.hsp) && sign(_player.hsp) != 0)
                _tspeed = 8;
            
            chargecamera = approach(chargecamera, _targetcharge, _tspeed);
        }
        else if (_player.state == states.machslide)
        {
            _tspeed = 10;
        }
        
        chargecamera = approach(chargecamera, _targetcharge, _tspeed);
    }
    
    _cam_x += chargecamera;
    _cam_x = clamp(_cam_x, Camera_xorigin, Camera_width - vw);
    _cam_y = clamp(_cam_y, Camera_yorigin, Camera_height - vh);
    _cam_x = clamp(_cam_x, 0, room_width - vw);
    _cam_y = clamp(_cam_y, 0, room_height - vh);
    _cam_x += irandom_range(-panicshake, panicshake);
    _cam_y += irandom_range(-panicshake, panicshake);
    
    if (global.panic)
    {
        _shake_x += (panicshake * random_range(-1, 1));
        _shake_y += (panicshake * random_range(-1, 1));
    }
    
    if (shake_mag != 0)
    {
        _shake_x += irandom_range(-shake_mag, shake_mag);
        _shake_y += irandom_range(-shake_mag, shake_mag);
    }
    
    lspd = 0.3;
    Cam_x = _cam_x;
    Cam_y = _cam_y;
    camera_set_view_pos(view_camera[0], Cam_x + _shake_x, Cam_y + _shake_y);
}

if (obj_player.y < (180 + obj_camera.Cam_y) && obj_player.x < (350 + obj_camera.Cam_x))
    DrawY = lerp(DrawY, -300, 0.15);
else
    DrawY = lerp(DrawY, 0, 0.15);

Collectshake = approach(Collectshake, 0, 20 / room_speed);

if (global.collect < global.crank)
    global.currentrank = "D";
else if (global.collect < global.brank)
    global.currentrank = "C";
else if (global.collect < global.arank)
    global.currentrank = "B";
else if (global.collect < global.srank)
    global.currentrank = "A";
else if (global.collect >= global.srank)
{
    if (global.combolost == 0 && global.secretfound > 2 && global.lapcount >= 1 && global.treasure)
        global.currentrank = "P";
    else
        global.currentrank = "S";
}

if (oldranklol != global.currentrank)
{
    bubblescale = 2;
    var rank_index = rank_checker(string_lower(global.currentrank));
    var oldrank_index = rank_checker(string_lower(oldranklol));
    
    if (room != scootercutsceneidk && room != rm_credits && room != devroom && room != palroom && room != rank_room && room != realtitlescreen && room != hub_w1 && room != hub_w2 && room != outer_room1 && room != outer_room2 && room != rm_initializer)
    {
        if (oldrank_index > rank_index)
        {
            if (global.currentrank == "D" && global.collect > 0)
                scr_sound(sfx_rankdown5);
            else if (global.currentrank == "C")
                scr_sound(sfx_rankdown4);
            else if (global.currentrank == "B")
                scr_sound(sfx_rankdown3);
            else if (global.currentrank == "A")
                scr_sound(sfx_rankdown2);
            else if (global.currentrank == "S")
                scr_sound(sfx_rankdown1);
        }
        else if (oldrank_index < rank_index)
        {
            if (global.currentrank == "C")
                scr_sound(sfx_rankup1);
            else if (global.currentrank == "B")
                scr_sound(sfx_rankup2);
            else if (global.currentrank == "A")
                scr_sound(sfx_rankup3);
            else if (global.currentrank == "S")
                scr_sound(sfx_rankup4);
            else if (global.currentrank == "P")
                scr_sound(sfx_rankup5);
        }
    }
    
    oldranklol = global.currentrank;
}

bubblescale = approach(bubblescale, 0, 0.2);
global.screenflash -= 1;
audio_listener_position(camera_get_view_x(view_camera[0]) + (cam_w / 2), camera_get_view_y(view_camera[0]) + (cam_h / 2), 0);

if (painterdex < sprite_get_number(spr_painterhp))
    painterdex += 0.35;
else
    painterdex = 0;

if (pizdex < sprite_get_number(spr_pizzellehp))
    pizdex += 0.35;
else
    pizdex = 0;

switch (room)
{
    case devroom:
        window_set_caption("Developer's party in the Sugary Spire");
        break;
    
    case hub_w1:
        window_set_caption("Inside of the fabled Sugary Spire");
        break;
    
    case hub_w2:
        window_set_caption("The alienated floor of the Sugary Spire");
        break;
    
    case entryway_1:
        window_set_caption("Construction underway at the Sugary Spire");
        break;
    
    case steamy_1:
        window_set_caption("Downtown Sugary Spire");
        break;
    
    case molasses_1:
        window_set_caption("Sugary Spire's natural habitat");
        break;
    
    case mines_1:
        window_set_caption("Hard at work underneath the Sugary Spire");
        break;
    
    case rm_titlecard:
        window_set_caption("Loading the Sugary Spire");
        break;
    
    case rm_painterarena:
        window_set_caption("Artist's representation of the Sugary Spire");
        break;
    
    case estate_1:
        window_set_caption("Property of the Sugary Spire");
        break;
}

audio_listener_position(camera_get_view_x(view_camera[0]) + (cam_w / 2), camera_get_view_y(view_camera[0]) + (cam_h / 2), 0);
audio_listener_position(Cam_x, Cam_y, 0);
audio_listener_orientation(0, 0, 1, 0, -1, 0);
