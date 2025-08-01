if (place_meeting(x, y + vsp + grav, obj_player))
{
    DestroyedBy = 370;
    event_user(0);
}

if (place_meeting(x, y + vsp + grav, obj_baddie))
{
    DestroyedBy = 370;
    event_user(0);
}
