function cutscene_shake_actor(arg0, arg1)
{
    var _dump = cutscene_get_actor(arg0);
    
    with (_dump)
    {
        shake_magx = arg1;
        shake_dir = 1;
        shake_timer = 0;
    }
    
    cutscene_event_end();
}
