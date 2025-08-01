function scr_sleep(arg0 = undefined)
{
    with (obj_camera)
    {
        if (global.hitstunalarm <= -1 && !global.freezeframe)
        {
            if (is_undefined(arg0))
            {
                freezetype = false;
            }
            else
            {
                freezeval = arg0;
                freezetype = true;
            }
            
            NextFreeze = true;
        }
    }
}
