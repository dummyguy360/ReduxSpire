var do_hop = false;

if (floor(helpindex) > 36 && bbox_in_camera(view_camera[0]))
{
    helpindex = 0;
    do_hop = true;
}

if (do_hop && sprite_index != spr_confecticage_hop)
{
    scr_sound(sound_confectihelp);
    image_index = 0;
    sprite_index = spr_confecticage_hop;
}
