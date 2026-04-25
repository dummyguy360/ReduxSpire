function state_player_ladder()
{
    floatyGrab = 18;
    jumpAnim = true;
    landAnim = false;
    crouchAnim = false;
    turning = 0;
    jumpstop = false;
    movespeed = 0;
    hsp = 0;
    flash = false;
    grav = 0;
    
    if (key_up)
    {
        sprite_index = spr_laddermove;
        
        if (vsp > -6)
            vsp = -6;
        
        if (!stepEffectBuffer--)
        {
            instance_create(x, y + 43, obj_puffEffect);
            scr_sound(sfx_playerstep);
            stepEffectBuffer = 12;
        }
        
        image_speed = 0.35;
    }
    else if (key_down)
    {
        sprite_index = spr_ladderdown;
        
        if (vsp < 10)
            vsp = 10;
        
        image_speed = -0.35;
    }
    else
    {
        sprite_index = spr_Ladder;
        vsp = 0;
    }
    
    mach2 = 0;
    jumpAnim = 1;
    dashAnim = 1;
    
    if (!place_meeting(x, y, obj_ladder))
    {
        landAnim = 0;
        jumpAnim = 0;
        state = states.normal;
        image_index = 0;
        inputLadderBuffer = 5;
        vsp = 0;
    }
    
    if (inputBufferJump > 0)
    {
        inputBufferJump = 0;
        scr_sound(sfx_pz_jump);
        sprite_index = spr_jump;
        ladderbuffer = 20;
        ladderBuffer = 20;
        inputLadderBuffer = 20;
        jumpAnim = 1;
        state = states.jump;
        vsp = -9;
        image_index = 0;
    }
    
    if (key_down && scr_solid_player(x, y + 1))
    {
        state = states.normal;
        image_index = 0;
    }
}
