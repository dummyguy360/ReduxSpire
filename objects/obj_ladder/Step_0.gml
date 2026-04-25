if (place_meeting(x, y - 16, obj_player))
{
    with (obj_player)
    {
        if (place_meeting(x, y + 1, obj_ladder) && key_down && !key_up && !inputLadderBuffer && grounded && (state == states.crouch || state == states.freefallland) && place_meeting(x, y + 1, obj_platform))
        {
            hsp = 0;
            vsp = 0;
            y += 5;
            state = states.ladder;
            x = other.x + 16;
            y = floor(y);
            
            if ((y % 2) == 1)
                y -= 1;
        }
    }
}
