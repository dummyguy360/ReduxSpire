with (obj_player)
{
    if (key_up && !place_meeting_collision(x, round(y), UnknownEnum.Value_12) && (state == states.normal || state == states.uppercut || state == states.mach2 || state == states.mach3 || state == states.mach1 || state == states.shotgunjump || state == states.jump || state == states.highjump || state == states.pizzanokungfu) && state != states.hurt && state != states.machslide && state != states.freefall && state != states.freefallland)
    {
        hsp = 0;
        vsp = 0;
        mach2 = 0;
        state = states.ladder;
        y = round(y);
        
        if ((y % 2) == 1)
            y -= 1;
    }
}
