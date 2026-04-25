audio_emitter_position(playerSound, x, y, 0);
audio_emitter_gain(playerSound, global.soundVolume);
var a = instance_place(x, y, obj_secret_tiles);
secret_array = (a != -4) ? a.tiles : ["-4"];

if (place_meeting(x, y, obj_exitgate) && state == states.comingoutdoor)
{
    var _check = false;
    
    with (instance_place(x, y, obj_exitgate))
        _check = ds_list_find_index(global.saveroom, id) != -1;
    
    if (!_check)
    {
        global.playmiliseconds = 0;
        global.playseconds = 0;
        global.playminutes = 0;
        global.playhour = 0;
    }
}

if (state != states.comingoutdoor)
    image_blend = make_color_hsv(0, 0, 255);

if (state != states.mach2 && state != states.mach3 && state != states.climbdownwall)
    upsideDownJump = false;

wetTimer = approach(wetTimer, 0, 3);

if (wetTimer > 0 && wetTimerEffect-- <= 0)
    wetTimerEffect = 3;

if (firetrailbuffer > 0)
    firetrailbuffer -= ((movespeed / 24) * 26);

if (firetrailbuffer <= 0)
{
    if (movespeed >= 12 && sprite_index != spr_player_PZ_mach2_longJump && sprite_index != spr_player_PZ_mach2_longJump_intro && (state == states.mach2 || state == states.mach3 || (state == states.machroll && mach3Roll > 0)))
        instance_create(x, y, obj_flamecloud);
    
    firetrailbuffer = 100;
}

inputLadderBuffer = max(inputLadderBuffer - 1, 0);

if (state != states.mach3 && state != states.climbwall && state != states.climbceiling && state != states.climbdownwall)
    mach4mode = false;

if (room == realtitlescreen || room == rm_introVideo || room == scootercutsceneidk)
    state = states.titlescreen;

if (grounded)
{
    groundedcot = 1;
    floatyGrab = 18;
}

if (y > (room_height + 400) && room != timesuproom && !instance_exists(obj_fadeout) && !instance_exists(obj_cutsceneManager))
    scr_playerrespawn();

if (state != states.freefall && state != states.freefallprep && state != states.freefallland && state != states.superslam)
    freefallsmash = -14;

if (!global.freezeframe && state != states.frozen)
{
    if (!instance_exists(baddiegrabbedID) && (state == states.grab || (state == states.superslam && sprite_index != spr_piledriverland) || state == states.charge))
        state = states.normal;
    
    if (!(state == states.grab || state == states.charge || state == states.superslam || state == states.finishingblow))
        baddiegrabbedID = noone;
}

if (character == "P")
{
    if (anger == 0)
        angry = 0;
    
    if (anger > 0)
    {
        angry = 1;
        anger -= 1;
    }
}

if (sprite_index == spr_player_PZ_tired && state != states.normal)
    windingAnim = 0;
else
    audio_stop_sound(sound_superjumpcharge2);

if (suplexmove == true && grounded)
{
    suplexmove = false;
    flash = true;
}

if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create(x + random_range(-5, 5), y + 46, obj_vomit);

if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create(x + random_range(-5, 5), y + 46, obj_vomit))
        sprite_index = spr_vomit2;
}

var c_title = floor(global.combo / 5);

if (!global.freezeframe)
{
    global.combotime = clamp(global.combotime, 0, 60);
    
    if (global.combofreeze <= 0 && !instance_exists(obj_fadeout))
        global.combotime = approach(global.combotime, 0, 0.15);
}

global.combofreeze--;
global.combofreeze = clamp(global.combofreeze, 0, 75);
c_title = floor(global.combo / 5);

if (oldComboTitle != c_title && c_title > 0)
{
    instance_destroy(obj_combotitle);
    instance_destroy(obj_comboEndEffect);
    
    with (instance_create(830, 265, obj_combotitle))
        title = c_title;
    
    oldComboTitle = c_title;
}

if (global.combotime <= 0 && global.combo != 0 && room != timesuproom)
{
    global.savedcombo = global.combo;
    
    if (global.combo > 5)
        scr_queue_tvanim(obj_tv.happytvspr, 200);
    
    global.combo = 0;
    global.combolost = true;
    instance_destroy(obj_comboEndEffect);
    
    with (instance_create(832, 265, obj_comboEndEffect))
    {
        title = max(c_title, 0);
        combo = global.savedcombo;
    }
    
    if (!supertauntcharged)
        supercharge = 0;
    
    oldComboTitle = 0;
    playComboVariable = -4;
}

if (input_buffer_jump < 8)
    input_buffer_jump++;

if (input_buffer_secondjump < 8)
    input_buffer_secondjump++;

if (input_buffer_highjump < 8)
    input_buffer_highjump++;

if (key_particles == 1)
    instance_create(random_range(x + 25, x - 25), random_range(y + 35, y - 25), obj_keyeffect);

if (inv_frames == 0 && hurted == 0)
    image_alpha = 1;

if (state == states.mach2 || state == states.pizzanokungfu || state == states.bottlerocket || state == states.charge || state == states.skateboard || state == states.knightpep || state == states.boxxedpep || state == states.cheesepep || state == states.knightpepslopes || state == states.knightpepattack || state == states.bombpep || state == states.facestomp || state == states.machfreefall || state == states.facestomp || state == states.machroll || state == states.mach3 || state == states.freefall || state == states.Sjump)
    attacking = 1;
else
    attacking = 0;

if (state == states.Throw || state == states.punch || state == states.backkick || state == states.shoulder || state == states.uppunch)
    grabbing = 1;
else
    grabbing = 0;

var _machslideCheck = sprite_index == spr_machslideboost3 || sprite_index == spr_machslideboost3FallStart || sprite_index == spr_machslideboost3Fall;

if (state == states.mach3 || (state == states.machslide && _machslideCheck) || state == states.slipnslide || state == states.rupertslide || state == states.rupertnormal || (state == states.rupertjump && vsp > 0) || (state == states.tumble && sprite_index != spr_tumblestart && sprite_index != spr_tumbleend) || (state == states.climbwall && (verticalMovespeed > 8 || mach2 >= 100)) || (state == states.climbceiling && (movespeed > 8 || mach2 >= 100)) || (state == states.climbdownwall && (verticalMovespeed > 8 || mach2 >= 100)) || state == states.frostburnspin || state == states.pizzanokungfu || (state == states.cottonroll && movespeed > 8) || state == states.bottlerocket || state == states.machtumble || state == states.minecart || state == states.fireass || state == states.puddle || state == states.Nhookshot || state == states.skateboard || state == 28 || state == states.freefall || state == states.Sjump || (state == states.machroll && mach3Roll > 0) || state == states.machfreefall || state == states.charge || (state == states.superslam && sprite_index == spr_piledriver) || (state == states.superslam && sprite_index == spr_player_PZ_pileDriver_intro) || state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.boxxedpep || state == states.cheesepep || state == states.cheeseball || state == states.uppercut || state == states.pizzanomach || state == states.ufodash || state == states.backkick)
    instakillmove = 1;
else
    instakillmove = 0;

if (flash == 1 && alarm[0] <= 0)
    alarm[0] = 0.15 * room_speed;

if (state != states.mach3 && state != states.machslide)
    autodash = 0;

if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
    fallinganimation = 0;

if (state != states.freefallland && state != states.normal && state != states.machslide)
    facehurt = 0;

if (state != states.normal && state != states.machslide)
    machslideAnim = 0;

if (state != states.normal)
{
    idle = spr_player_machpunch2;
    dashdust = 0;
}

if (state != states.mach1 && state != states.jump && state != states.Nhookshot && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes && state != states.cotton && state != states.cottonroll)
    momentum = 0;

if (state != states.Sjump && state != states.Sjumpprep)
    a = 0;

if (state != states.facestomp)
    facestompAnim = 0;

if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
    superslam = 0;

if (state != states.mach2)
    machpunchAnim = 0;

if (state != states.jump)
    ladderbuffer = 0;

if (state != states.jump)
    stompAnim = 0;

if (toomuchalarm1 > 0)
    toomuchalarm1 -= 1;

if (state == states.mach3 || state == states.Nhookshot || state == states.mach2 || state == states.charge || (state == states.machslide && mach2 >= 100) || (state == states.machroll && sprite_index != spr_crouchslip && movespeed >= 12) || state == states.cottondrill || state == states.minecart || (state == states.pizzanosidejump && sprite_index != spr_pizzano_sjumpprepside) || state == states.pizzanoshoulderbash || (state == states.chainsaw && mach2 >= 100) || state == states.uppercut || state == states.Sjump)
{
    mach_aftimg--;
    
    if (mach_aftimg <= 0)
    {
        with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale, true))
            mach3Afterimage = true;
        
        mach_aftimg = 6;
    }
}
else
    mach_aftimg = 0;

if (state != states.hurt)
    hurtsound = 0;

if (((place_meeting(x, y, obj_door) && !place_meeting(x, y, obj_doorblocked)) || (place_meeting(x, y, obj_startgate) && state != states.victory) || place_meeting(x, y, obj_janitorDoor) || place_meeting(x, y, obj_keydoorclock) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1 && room != sucrose_1)) && !instance_exists(obj_uparrow) && scr_solid(x, y + 1) && state == states.normal)
    instance_create(x, y, obj_uparrow);

if (state == states.mach3 && !instance_exists(obj_speedlines))
    instance_create(x, y, obj_speedlines, { playerID: id });

if (state == states.pizzanokungfu)
{
    blue_aftimg--;
    
    if (blue_aftimg <= 0)
    {
        create_afterimage(choose(afterimages.solid_blue, afterimages.solid_pink), xscale, true);
        blue_aftimg = 6;
    }
}
else
    blue_aftimg = 0;

if (toomuchalarm2 > 0)
{
    toomuchalarm2--;
}
else if (state == states.backkick && sprite_index != spr_player_taunt && !grounded)
{
    with (instance_create(x, y, obj_wallkickeffect))
    {
        playerid = other.object_index;
        image_index = other.image_index - 1;
        
        if (other.state == states.backbreaker)
            image_index = other.image_index;
        
        image_xscale = other.xscale;
        sprite_index = other.sprite_index;
    }
    
    toomuchalarm2 = 6;
}

if (state != states.backbreaker)
{
    if (supercharge >= 10 && state != states.backbreaker)
    {
        supertauntbuffer = 0;
        
        if (!supertauntcharged)
            scr_sound(sound_gotsupertaunt);
        
        supertauntcharged = true;
    }
    
    if (supertauntcharged == true && room != rank_room)
    {
        superTauntEffect--;
        
        if (superTauntEffect <= 0)
        {
            instance_create(x + irandom_range(-25, 25), y + irandom_range(-10, 35), obj_supertaunteffect);
            superTauntEffect = 4;
        }
    }
}

if (place_meeting(x, y + 1, obj_molassesGround))
{
    if (hsp != 0 && (floor(image_index) % 4) == 0 && grounded)
    {
        with (instance_create(x, y + 43, obj_debris))
        {
            sprite_index = spr_molassesgoop;
            image_index = irandom_range(0, 5);
        }
    }
    
    if (state == states.climbwall && vsp < 0)
        state = states.normal;
    
    if (state == states.frostburnwallrun && vsp < 0)
        state = states.frostburn;
    
    if (vsp < 0 && grounded)
    {
        vsp /= 2;
        
        with (instance_create(x, y + 43, obj_debris))
        {
            sprite_index = spr_molassesgoop;
            image_index = irandom_range(0, 5);
        }
    }
}

if (place_meeting(x, y + 3, obj_icyGround) && grounded)
{
    if (sign(hsp) != sign(prevHsp))
        slideHsp += (prevHsp / 1.5);
    
    if (scr_slope())
        slideHsp += (0.25 * slopeMomentum_acceleration());
}
else if (grounded)
    slideHsp = approach(slideHsp, 0, 0.35);

if (!grounded)
    slideHsp = approach(slideHsp, 0, 0.6);

slideHsp = approach(slideHsp, 0, 0.15);
slideHsp = clamp(abs(slideHsp), 0, 3) * sign(slideHsp);

if (state == states.climbceiling || state == states.climbdownwall || state == states.climbwall)
    slideHsp = 0;

if (state != states.bushdisguise)
    bushdetection = 0;

if (state != states.crouch)
    crouchjumptimer = 0;

if (state != states.pizzanopummel && state != states.frozen)
{
    pummelhit = 0;
    pummelfinish = 0;
}

if (gumbobpropellercooldown > 0)
    gumbobpropellercooldown--;

if (global.starrmode == 1)
{
    if (global.starrmode == 1 && state == states.mach3)
        movespeed = 12;
    else if (state == states.mach3 && movespeed > 12)
        movespeed = 12;
}

if (state == states.door || place_meeting(x, y, obj_hallway) || state == states.victory)
    global.roomsave = 0;

if (Dashpad_buffer > 0)
    Dashpad_buffer = max(Dashpad_buffer - 1, 0);

if (sprite_index == spr_player_machpunch1 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach2;

if (sprite_index == spr_player_machpunch2 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach2;

if (global.combo > global.highestcombo)
    global.highestcombo = global.combo;

if (palettewave == true)
    paletteselect = wave(1, sprite_get_width(spr_palette) - 1, 0, 1);

if (surface_exists(surf_pallete) && paletteselect >= (sprite_get_width(spr_palette) - 1))
    custompalette = true;
else if (paletteselect < (sprite_get_width(spr_palette) - 1))
    custompalette = false;

if (state != states.coneboyinhale && state != states.frozen)
    inhalestrength = 0;

if (kungaircount == 1)
    kungairtime += 1;

if (state != states.pizzanokungfu && state != states.frozen)
{
    kungaircount = 0;
    kungairtime = 0;
}

if (!ds_list_empty(sour_buddies))
{
    var _size = ds_list_size(sour_buddies);
    var sourreduction = 1 + (_size / 15);
    
    if (vsp < 0 && grounded)
        vsp /= sourreduction;
    
    hsp /= sourreduction;
    
    if (sour_buddies_timer > 0)
        sour_buddies_timer--;
    else if (key_jump || key_slap2 || key_right2 || key_left2 || key_attack2 || state == states.mach3)
    {
        var _range = irandom_range(0, _size);
        ds_list_delete(sour_buddies, _range);
        sour_buddies_timer = irandom_range(5, 25);
    }
}

if (state != states.smirk)
    ufomaxspeed = 0;

if (obj_player.state != states.seacream && obj_player.state != states.seacreamjump && obj_player.state != states.seacreamstick)
    additionalspeedvar = 0;

if (keyboard_check_pressed(vk_pageup))
    patternnumb += 1;

if (keyboard_check_pressed(vk_pagedown))
    patternnumb -= 1;

patternnumb %= 2;
patternspr = asset_get_index("spr_pattern" + string(patternnumb));

if (inputBufferSecondJump < 8)
    inputBufferSecondJump++;

if (inputBufferHighJump < 8)
    inputBufferHighJump++;

inputBufferSecondJump = min(inputBufferSecondJump + 1, 8);
inputBufferHighJump = min(inputBufferHighJump + 1, 8);

if (state != states.machroll && state != states.mach3)
    mach3Roll = 0;

railmovespeed = approach(railmovespeed, 0, grounded ? 0.75 : 0.5);

if (state == states.frostburn || state == states.frostburnwallrun || state == states.frostburnspin || state == states.frostburnbump || state == states.seacream)
    frostburntransfo = true;
else if (state != states.hooks && !(state == states.frostburn || state == states.frostburnwallrun || state == states.frostburnspin || state == states.frostburnbump || state == states.seacream))
    frostburntransfo = false;

supercharge = clamp(supercharge, 0, 10);

if (state != states.hurt)
    player_hurt_buffer = 100;

if (state != states.normal)
{
    breakdanceBuffer = 0;
    breakdanceSpeed = 0.25;
}

var nearhook = instance_nearest(x, y, obj_hook);

if (audio_is_playing(sfx_propeller) && distance_to_object(nearhook) > 960)
    audio_stop_sound(sfx_propeller);
