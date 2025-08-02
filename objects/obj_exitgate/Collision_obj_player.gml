if (global.panic == 1 && room != sucrose_1)
{
    with (obj_player)
    {
        if (grounded && (!other.drop || other.drop_state == 1) && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3 || state == states.Sjumpprep))
        {
            targetDoor = "none";
            audio_stop_all();
            scr_savelevelDetails();
            obj_tv.tvsprite = spr_tvoff;
            
            if (state != states.door)
            {
                sprite_index = spr_lookdoor;
                state = states.door;
                image_index = 0;
            }
            
            if (!instance_exists(obj_endlevelfade))
            {
                with (instance_create(x, y, obj_endlevelfade))
                {
                    var _cam_x = camx;
                    var _cam_y = camy;
                    PlayerX = other.x - _cam_x;
                    PlayerY = other.y - _cam_y;
                }
            }
            
            global.panic = false;
            global.lapmusic = false;
            
            if (global.rank == "p")
                scr_sound(mu_rankp);
            
            if (global.rank == "s")
                scr_sound(mu_ranks);
            
            if (global.rank == "a")
                scr_sound(mu_ranka);
            
            if (global.rank == "b")
                scr_sound(mu_rankb);
            
            if (global.rank == "c")
                scr_sound(mu_rankc);
            
            if (global.rank == "d")
                scr_sound(mu_rankd);
        }
    }
}
