lap_out = 0;
lap_x = 0;
lap_y = 0;
goo_index = 0;
goo_surface = surface_create(100, 180);
surface_set_target(goo_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();
image_speed = 0.35;
chose = 0;
message = "";
comboAnim = false;
showtext = 0;
tvsprite = spr_tvoff;
noisesprite = spr_rosette;
xi = 500;
idleanim = 0;
yi = 600;
imageindexstore = 0;
chooseOnecomboend = true;
ComboShake = false;
comboendImage = 0;
comboendSprite = spr_badcombo_boil;
combocanFade = true;
once = 0;
global.hurtcounter = 0;
global.hurtmilestone = 3;
global.mallowfollow = 0;
global.crackfollow = 0;
alpha = 1;
global.challengemode = 0;
shownranka = 0;
shownrankb = 0;
shownrankc = 0;
global.erank = 0;
global.srank = 0;
global.arank = 0;
global.brank = 0;
global.crank = 0;
character = "PIZZELLE";
BarSurface = noone;
BarX = 0;
tvcount = 500;
draw_combo = 0;
combofade = 0;
invsprite = 593;
staticdraw = 0;
statictimer = 20;
ChannelState = 0;
OLDChannelState = 0;
state = states.normal;
expressiontime = 0;
playComboVariable = 0;
draw_static = 0;
static_index = 0;
idlespr = noone;
saved_tv_spr = noone;
expressionsprite = noone;
playerstate = obj_player.state;
supermario = 0;
tvlength = 0;
propindex = 0;
statindex = 0;
bobbing = 0;
textbubblesprites = 1580;
textbubbleframes = 0;
textpromptsurface = noone;
shownewtext = false;
showingnewtext = false;
text_x = 32;
new_message = "";
global.newhudtvanim = ds_queue_create();
global.newhudmessage = ds_queue_create();
alarm[1] = 1;
DrawY = 0;
voice1 = 208;
voice2 = 65;
voice3 = 75;
voice4 = 130;
voice5 = 34;
voice6 = 16;
voice7 = 140;
voice8 = 209;

function scr_combotext(arg0 = global.combo)
{
    var sprite = spr_badcombo_intro;
    
    if (arg0 <= 5)
    {
        sprite = spr_badcombo_intro;
        
        if (chance(0.25))
            scr_dialogue(voice1);
    }
    else if (arg0 <= 10)
    {
        sprite = spr_sourcombo_intro;
        
        if (chance(0.5))
            scr_dialogue(voice2);
    }
    else if (arg0 <= 15)
    {
        sprite = spr_okcombo_intro;
        
        if (chance(0.75))
            scr_dialogue(voice3);
    }
    else if (arg0 <= 20)
    {
        sprite = spr_alrightcombo_intro;
        
        if (chance(0.85))
            scr_dialogue(voice4);
    }
    else if (arg0 <= 25)
    {
        sprite = spr_sweetcombo_intro;
        scr_dialogue(voice5);
    }
    else if (arg0 <= 30)
    {
        sprite = spr_spicycombo_intro;
        scr_dialogue(voice6);
    }
    else if (arg0 <= 35)
    {
        sprite = spr_ruthlesscombo_intro;
        scr_dialogue(voice7);
    }
    else
    {
        sprite = spr_wtfcombo_intro;
        scr_dialogue(voice8);
    }
    
    global.combolost = 1;
    return sprite;
}

timer_index = 0;
timer_sprite = 1411;
coneball_index = 0;
coneball_sprite = 494;
timer_out = 180;
timer_in = 180;
timer_y = 100;
roll_index = 0;
roll_sprite = 781;
bartimer_x = 0;
target_fill = 0;
sucroseTimer = false;
oldTimer_sprite = 1411;
oldBall_sprite = 494;
oldBall_index = 0;
oldTimer_index = 0;
combo_state = states.changing;
hand_y = 0;
hand_x = 0;
combo_x = 0;
combo_y = 0;
combo_vsp = 0;
controlprompt = "Placeholder Prompt Text";
promptalpha = 0;
nexttext = "Nil";
promptappear = false;
promptappeared = false;
prompt_timer = 0;
tvbg = spr_tvbgs;
current_bg = 0;
