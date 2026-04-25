scr_tvsprites();

if (!(obj_player.state == states.knightpep && obj_player.state == states.knightpepattack && obj_player.state == states.knightpepslopes))
    once = 0;

if (obj_player.y < (180 + obj_camera.Cam_y) && obj_player.x > ((camw - 350) + obj_camera.Cam_x))
{
    DrawY = lerp(DrawY, -300, 0.15);
    alpha = 0.5;
}
else
{
    DrawY = lerp(DrawY, 6, 0.15);
    alpha = 1;
}

if (global.hurtcounter >= global.hurtmilestone && global.hurtcounter >= 10)
{
    showtext = 1;
    alarm[0] = 150;
    
    if (obj_player.character == "P")
        character = "Pizzelle";
    else
        character = "Pizzano";
    
    draw_set_font(global.promptfont);
    scr_controlprompt("You have hurt " + string(character) + " " + string(global.hurtmilestone) + " times...", -4, 150);
    global.hurtmilestone += 10;
}

if (obj_player.state == states.keyget)
{
    showtext = 1;
    message = "Key obtained!";
    alarm[0] = 50;
}

if (staticdraw)
    statictimer--;

if (statictimer < 0)
    staticdraw = false;

var player_state = global.freezeframe ? obj_player.frozenstate : obj_player.state;
var target_player = 370;
sprite_image_number = sprite_get_number(tvsprite);

if (player_state == UnknownEnum.Value_71)
{
    if (target_player.sprite_index == spr_player_PZ_mach3_turn)
        player_state = UnknownEnum.Value_70;
    else
        player_state = UnknownEnum.Value_69;
}

ycombometer = ystartcombometer + DrawY + displayY;
xcombometer = xstartcombometer + wave(-5, 5, 2, 20);

if (!(global.combotime > 0 && global.combo > 0))
{
    displayY = approach(displayY, displayYMax, 5);
    comboTimeDisplay = 0;
    combofillDisplay = lerp(combofillDisplay, comboTimeDisplay / 60, 0.5);
    displayState = UnknownEnum.Value_0;
}
else
{
    switch (displayState)
    {
        case UnknownEnum.Value_0:
            displayVSP += 0.5;
            displayY = approach(displayY, 20, displayVSP);
            
            if (displayY >= 20)
                displayState = UnknownEnum.Value_1;
            
            break;
        
        case UnknownEnum.Value_1:
            displayY = lerp(displayY, 0, 0.05);
            
            if (displayY < 1)
            {
                displayY = 0;
                displayVSP = 0;
                displayState = UnknownEnum.Value_2;
            }
            
            break;
        
        case UnknownEnum.Value_2:
            var _setVSP = -1;
            
            if (global.combotime < 30)
            {
                if (global.combotime < 15)
                    _setVSP = -2;
                
                displayY += displayVSP;
                displayVSP += 0.5;
                
                if (displayY > 0)
                {
                    displayY = 0;
                    displayVSP = _setVSP;
                }
            }
            else
            {
                displayY = approach(displayY, 0, 10);
            }
            
            break;
    }
    
    comboDisplay = global.combo;
    var target_combo_time = clamp(global.combotime, 0, 60);
    var meter_fill_width = sprite_get_width(spr_tvHUD_comboMeter_fill);
    combofillDisplay = lerp(combofillDisplay, (target_combo_time / 60) * meter_fill_width, 0.5);
    combofillDisplay = clamp(combofillDisplay, 0, meter_fill_width);
}

if (sprite_index == spr_tvHUD_turningOn && floor(turningOnindex) >= 17)
    sprite_index = spr_tvHUD_frame;

if ((tvsprite == spr_tvHUD_turningOn || sprite_index == spr_tvHUD_turningOn) && floor(turningOnindex) < 17)
    exit;

tvDoingExpression = false;

if (tvExpressionSprite != -4 && tvExpressionBuffer > 0)
{
    tvDoingExpression = true;
    queuedSprite = tvExpressionSprite;
    var _count = true;
    var _sprite_check = tvExpressionSprite;
    
    if (tvsprite == spr_tvHUD_player_PZ_hurtExp_1 || tvsprite == spr_tvHUD_player_PZ_hurtExp_2 || tvsprite == spr_tvHUD_player_PZ_hurtExp_3 || tvsprite == spr_tvHUD_player_PZ_hurtExp_4 || tvsprite == spr_tvHUD_player_PZ_hurtExp_5 || tvsprite == spr_tvHUD_player_PZ_hurtExp_6 || tvsprite == spr_tvHUD_player_PZ_hurtExp_7 || tvsprite == spr_tvHUD_player_PZ_hurtExp_8 || tvsprite == spr_tvHUD_player_PZ_hurtExp_9 || tvsprite == spr_tvHUD_player_PZ_hurtExp_10)
        _sprite_check = hurttvspr;
    
    switch (_sprite_check)
    {
        case hurttvspr:
            _count = obj_player.state != states.hurt;
            break;
        
        case secrettvspr:
            _count = !obj_player.is_inSecretPortal;
            break;
        
        case 2273:
            _count = obj_player.state != states.keyget && obj_player.state != states.actor;
            break;
    }
    
    if (_count && tvExpressionBuffer-- <= 0)
    {
        tvExpressionSprite = undefined;
        tvExpressionBuffer = 0;
    }
}

tvNormalStates = false;

if (tvExpressionBuffer <= 0)
{
    switch (player_state)
    {
        case UnknownEnum.Value_70:
        case UnknownEnum.Value_42:
        case UnknownEnum.Value_31:
        case UnknownEnum.Value_11:
        case UnknownEnum.Value_71:
            tvNormalStates = true;
            var my_mvsp = global.freezeframe ? abs(target_player.frozenstate) : abs(target_player.movespeed);
            
            if (player_state == UnknownEnum.Value_11)
                my_mvsp = abs(target_player.verticalMovespeed);
            
            var _oldQueue = queuedSprite;
            
            if (player_state == UnknownEnum.Value_42)
                queuedSprite = mach2tvspr;
            
            if (player_state == UnknownEnum.Value_70 || player_state == UnknownEnum.Value_11 || (player_state == UnknownEnum.Value_71 && target_player.sprite_index == spr_player_PZ_mach3_turn) || (player_state == UnknownEnum.Value_31 && target_player.mach3Roll > 0))
                queuedSprite = mach3tvspr;
            
            if (target_player.sprite_index == spr_player_PZ_mach4 || (player_state == UnknownEnum.Value_11 && my_mvsp >= 16) || (player_state == UnknownEnum.Value_31 && target_player.mach3Roll > 0 && my_mvsp >= 16))
                queuedSprite = mach4tvspr;
            
            if (player_state == UnknownEnum.Value_31 && target_player.mach3Roll <= 0)
            {
                if (tvsprite == mach2tvspr || tvsprite == mach3tvspr || tvsprite == mach4tvspr)
                    tvForceTransition = true;
                
                if (((queuedSprite == tvchange1 || queuedSprite == tvchange2) && animation_end()) || (queuedSprite != tvchange1 && queuedSprite != tvchange2))
                    queuedSprite = global.panic ? panictvspr : idletvspr;
                
                if (queuedSprite == idletvspr && tvIdleAnimationBuffer-- <= 0 && global.combo < 10)
                {
                    tvIdleAnimationBuffer = choose(500, 450, 400, 550);
                    queuedSprite = choose(tvchange1, tvchange2);
                    image_index = 0;
                }
                
                if (global.combo >= 10 && !global.panic)
                    queuedSprite = combotvspr;
                
                if (global.combo >= 50 && !global.panic)
                    queuedSprite = angrytvspr;
            }
            
            if (queuedSprite != _oldQueue)
                tvForceTransition = true;
            
            break;
        
        case UnknownEnum.Value_95:
            queuedSprite = puddletvspr;
            break;
        
        case UnknownEnum.Value_101:
            queuedSprite = minecarttvspr;
            break;
        
        case UnknownEnum.Value_108:
            queuedSprite = firetvspr;
            break;
        
        case UnknownEnum.Value_88:
        case UnknownEnum.Value_97:
        case UnknownEnum.Value_98:
            queuedSprite = cottontvspr;
            break;
        
        case UnknownEnum.Value_99:
            queuedSprite = orbtvspr;
            break;
        
        case UnknownEnum.Value_126:
            queuedSprite = hooktvspr;
            break;
        
        case UnknownEnum.Value_140:
        case UnknownEnum.Value_142:
        case UnknownEnum.Value_141:
        case UnknownEnum.Value_150:
        case UnknownEnum.Value_148:
        case UnknownEnum.Value_149:
        case UnknownEnum.Value_151:
            queuedSprite = frostburntvspr;
            break;
        
        case UnknownEnum.Value_48:
            queuedSprite = ufotvspr;
            break;
        
        case UnknownEnum.Value_83:
            queuedSprite = marshdogspr;
            break;
        
        default:
            tvNormalStates = true;
            
            if (tvsprite == mach2tvspr || tvsprite == mach3tvspr || tvsprite == mach4tvspr)
                tvForceTransition = true;
            
            if (((queuedSprite == tvchange1 || queuedSprite == tvchange2) && animation_end()) || (queuedSprite != tvchange1 && queuedSprite != tvchange2))
                queuedSprite = global.panic ? panictvspr : idletvspr;
            
            if (queuedSprite == idletvspr && tvIdleAnimationBuffer-- <= 0 && global.combo < 10)
            {
                tvIdleAnimationBuffer = choose(500, 450, 400, 550);
                queuedSprite = choose(tvchange1, tvchange2);
                image_index = 0;
            }
            
            if (global.combo >= 10 && !global.panic)
                queuedSprite = combotvspr;
            
            if (global.combo >= 50 && !global.panic)
                queuedSprite = angrytvspr;
            
            break;
    }
}

var do_transition = false;

if (tvDoingExpression != tvPrevDoingExpression)
{
    tvPrevDoingExpression = tvDoingExpression;
    do_transition = true;
}

if (!do_transition && tvNormalStates != tvPrevNormalStates)
{
    tvPrevNormalStates = tvNormalStates;
    do_transition = true;
}

if (!do_transition && tvForceTransition)
    do_transition = true;

if (tvsprite != queuedSprite)
{
    if (!staticActivated && (!do_transition || tvsprite == spr_tvHUD_turningOn || tvsprite == spr_tvHUD_turnedOff))
    {
        tvsprite = queuedSprite;
    }
    else
    {
        staticActivated = true;
        tvForceTransition = false;
    }
}

sprite_index = tvsprite;

if (textbubblesprites == spr_tv_bubbleopen && floor(textbubbleframes) >= (sprite_get_number(spr_tv_bubbleopen) - 1))
    textbubblesprites = spr_tv_bubble;

if (textbubblesprites == spr_tv_bubble)
    text_x += -3;

if (textbubblesprites == spr_tv_bubbleclose && floor(textbubbleframes) >= (sprite_get_number(spr_tv_bubbleclose) - 1))
{
    new_message = "";
    shownewtext = false;
    showingnewtext = false;
    textbubbleframes = 0;
    text_x = 300;
}

switch (obj_player.state)
{
    case states.cotton:
    case states.cottondrill:
    case states.cottonroll:
        if (ds_list_find_index(global.saveroom, "cotton") == -1)
        {
            scr_queue_message("Mmmph!! MMMPH!! MMPPH! (This cotton is quite a delicacy, isn't it?)");
            ds_list_add(global.saveroom, "cotton");
        }
        
        break;
    
    case states.minecart:
        if (ds_list_find_index(global.saveroom, "minecart") == -1)
        {
            scr_queue_message("Easy... easy... hold on to your hats... hard hats, rather.");
            ds_list_add(global.saveroom, "minecart");
        }
        
        break;
    
    case states.fireass:
        if (ds_list_find_index(global.saveroom, "fireass") == -1)
        {
            scr_queue_message("Breaking news... local candy maker finds himself burned by caramel.");
            scr_queue_message("What an idiot. How does that even happen?");
            ds_list_add(global.saveroom, "fireass");
        }
        
        break;
    
    case states.fling:
        if (ds_list_find_index(global.saveroom, "fling") == -1)
        {
            scr_queue_message("Aughh!! What kind of black magic has this flying frog casted upon me?! Feels kinda nice.");
            ds_list_add(global.saveroom, "fling");
        }
        
        break;
    
    case states.flushed:
        if (ds_list_find_index(global.saveroom, "flushed") == -1)
        {
            scr_queue_message("Incredibly cold temperatures are causing random individuals to be frozen solid. We recommend you stay inside during these chilly times.");
            ds_list_add(global.saveroom, "flushed");
        }
        
        break;
}

switch (obj_player.character)
{
    case "P":
        voice1 = sfx_combovoice1p;
        voice2 = sfx_combovoice2p;
        voice3 = sfx_combovoice3p;
        voice4 = sfx_combovoice4p;
        voice5 = sfx_combovoice5p;
        voice6 = sfx_combovoice6p;
        voice7 = sfx_combovoice7p;
        voice8 = sfx_combovoice8p;
        break;
    
    case "N":
    default:
        voice1 = sfx_combovoice1n;
        voice2 = sfx_combovoice2n;
        voice3 = sfx_combovoice3n;
        voice4 = sfx_combovoice4n;
        voice5 = sfx_combovoice5n;
        voice6 = sfx_combovoice6n;
        voice7 = sfx_combovoice7n;
        voice8 = sfx_combovoice8n;
        break;
}

propindex += 0.5;
statindex += 0.3;

if (global.key_inv == 1)
    invsprite = spr_invkey;
else if (global.treat == 1 && global.key_inv != 1)
    invsprite = spr_invdonut;
else
    invsprite = spr_invempty;

var timeinsecs = floor(target_fill / 60);
var secs = max(timeinsecs % 60, 0);
goo_index += 0.22;

if (goo_index >= (sprite_get_number(spr_combometer_goo) - 1))
    goo_index = frac(goo_index);

if (global.panic)
{
    if (global.fill > 0)
    {
        var _spd = (1 - (target_fill / global.maxwave)) * sprite_get_number(spr_bartimer_roll) * 10;
        roll_index = _spd % sprite_get_number(spr_bartimer_roll);
        oldTimer_index = secs % 2;
        coneball_index += 0.35;
        oldBall_index += 0.35;
        
        if (coneball_index >= sprite_get_number(coneball_sprite))
            coneball_index = frac(coneball_index);
        
        if (oldBall_index >= sprite_get_number(oldBall_sprite))
            oldBall_index = frac(oldBall_index);
        
        if (roll_index >= sprite_get_number(roll_sprite))
            roll_index = frac(roll_index);
        
        if (!get_panic())
            timer_y = approach(timer_y, 150, 4);
        else if (timer_in <= 0)
            timer_y = approach(timer_y, 0, 1);
    }
    else
    {
        if (oldBall_sprite == spr_timer_coneball_idle)
        {
            oldBall_sprite = spr_timer_coneball;
            oldBall_index = 0;
        }
        
        if (coneball_sprite == spr_bartimer_normalFront)
        {
            coneball_sprite = spr_bartimer_showtime;
            coneball_index = 0;
        }
        
        if (coneball_index < (sprite_get_number(coneball_sprite) - 1))
            coneball_index += 0.35;
        
        if (oldBall_index < (sprite_get_number(oldBall_sprite) - 1))
            oldBall_index += 0.35;
        
        if (oldTimer_index < (sprite_get_number(oldTimer_sprite) - 1))
            oldTimer_index += 0.35;
        
        if (timer_out > 0)
            timer_out--;
        else
            timer_y = approach(timer_y, 150, 1);
    }
    
    if (timer_in > 0)
        timer_in--;
}
else
{
    timer_y = 150;
    timer_out = 220;
    timer_in = 60;
    oldTimer_sprite = spr_timer;
    oldBall_sprite = spr_timer_coneball_idle;
    coneball_sprite = spr_bartimer_normalFront;
}

var tgtY = 1 - (global.combotime / 60);

if (global.combo == 0)
    tgtY = 1;

hand_y = lerp(hand_y, 54 * tgtY, 0.3);

if (global.combo != 0 && global.combotime > 0)
{
    switch (combo_state)
    {
        case states.changing:
            combo_vsp++;
            combo_y = approach(combo_y, 40, combo_vsp);
            
            if (combo_y >= 40)
                combo_state = states.normal;
            
            break;
        
        case states.normal:
            var pct = global.combotime / 60;
            var _shk = 2;
            var _t = 5;
            
            if (global.combotime < 30)
            {
                _shk = 3;
                _t = 1.1;
            }
            
            if (global.combotime < 15)
            {
                _shk = 2;
                _t = 0.15;
            }
            
            combo_y = lerp(combo_y, wave(-2, 2, 8, 3), 0.05);
            combo_x = wave(-_shk, _shk, _t, 5);
            break;
    }
    
    hand_x = approach(hand_x, combo_x, 5);
}
else
{
    combo_y = approach(combo_y, -200, 5);
    hand_x = approach(hand_x, 80, 5);
    combo_vsp = 0;
    combo_state = states.changing;
}

if (prompt_timer > 0 && !promptappear)
{
    promptalpha = approach(promptalpha, 1, 0.05);
    prompt_timer--;
}
else if (promptappear || prompt_timer <= 0)
{
    promptalpha = approach(promptalpha, 0, 0.05);
    
    if (promptalpha <= 0)
    {
        controlprompt = nexttext;
        promptappear = false;
    }
}
