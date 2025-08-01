function scr_room_updated(arg0)
{
    global.GMLIVE_roomstart = true;
    global.GMLIVE_realroom = arg0;
    room_goto_live(arg0);
    show_debug_message("Loading Live Room: " + string(room_get_name(arg0)));
}
