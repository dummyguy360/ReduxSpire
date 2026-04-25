function state_player_hurt()
{
    hsp = xscale * -movespeed;
    player_hurt_buffer--;
    
    if (place_meeting(x + hsp, y, obj_solid))
        movespeed = 0;
    
    combo = 0;
    mach2 = 0;
    jumpAnim = true;
    landAnim = !grounded;
    jumpstop = false;
    crouchAnim = false;
    hurted = true;
    turning = 0;
    alarm[5] = 2;
    alarm[7] = 60;
    image_speed = 0.35;
    
    if ((grounded && vsp >= 0) || !player_hurt_buffer)
    {
        if (state == states.hurt)
        {
            state = states.normal;
            movespeed = 0;
            hitLagbuffer = 0;
        }
    }
}
