if (key_jump)
    playedjumpsound = 0;

scr_getinput();
scr_characterspr();

if (state == states.gottreasure || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == states.keyget || state == states.door || state == states.victory || state == states.comingoutdoor || state == states.gameover)
    cutscene = 1;
else
    cutscene = 0;

is_inSecretPortal = false;

if (state != states.bump && state != states.cottonroll && state != states.crouch && state != states.boxxedpep && state != states.pistol && state != states.tumble && sprite_index != spr_player_crouchshoot && sprite_index != spr_player_skatecrouch && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump && sprite_index != spr_pizzano_crouchslide && (state != states.machtumble || (state == states.machtumble && place_meeting(x + hsp, y - 12, obj_destructibles))))
    mask_index = spr_player_mask;
else
    mask_index = spr_crouchmask;

if (grounded && vsp >= 0 && !(state == states.climbwall || state == states.tumble || state == states.grab || state == states.freefallland || state == states.shotgun || state == states.finishingblow))
{
    var targetangle = 360;
    var RotationStep = ((abs(hsp) / 16) - 2) * -1;
    
    if (abs(hsp) >= 8 || state == states.minecart)
    {
        targetangle = scr_slopeangle();
        RotationStep = (((abs(hsp) / 16) + (abs(hsp) / 32)) - 2) * -1;
    }
    
    slope_angle = darctan2(dsin(targetangle) + (dsin(slope_angle) * RotationStep), dcos(targetangle) + (dcos(slope_angle) * RotationStep));
}
else
{
    var _rotateSpeed = 16;
    
    if (slope_angle <= 0)
        slope_angle += 360;
    
    if (slope_angle < 180)
        slope_angle = lerp(slope_angle, 0, 0.25);
    else
        slope_angle = lerp(slope_angle, 360, 0.25);
    
    slope_angle = round(slope_angle);
}

draw_angle = 0;
scr_playerstate();
scr_collide_destructibles();
scr_playersounds();

if (state != states.titlescreen && state != states.hooks && state != states.noclip && state != states.door && state != states.Sjump && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover && state != states.door)
    scr_collision();

if (state != states.handstandjump)
    grav = 0.5;

inputBufferJump = key_jump ? 15 : max(inputBufferJump - 1, 0);
inputBufferSlap = key_slap2 ? 12 : max(inputBufferSlap - 1, 0);
coyoteTime = (grounded && vsp >= 0) ? 8 : max(coyoteTime - 1, 0);

if (vsp < 0)
    coyoteTime = 0;

can_jump = (grounded && vsp > 0) || (!grounded && coyoteTime > 0 && vsp > 0);
