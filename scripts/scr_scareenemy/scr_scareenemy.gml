function scr_scareenemy()
{
    if (!secretjumped && point_in_rectangle(x, y, obj_player.x - 400, obj_player.y - 60, obj_player.x + 400, obj_player.y + 60) && brave_timer <= 0 && (obj_player.state == states.mach3 || ((obj_player.movespeed >= 10 && obj_player.state == states.minecart) || (obj_player.move != 0 && obj_player.state == states.barrelcrouch))))
    {
        if (state != states.boxxedpep && !thrown && !throw_hit)
        {
            state = states.boxxedpep;
            sprite_index = scaredspr;
            
            if (x != obj_player.x)
                image_xscale = -sign(x - obj_player.x);
            
            hsp = 0;
            
            if (grav != 0 && grounded)
                vsp = -3;
            
            image_index = 0;
        }
        
        var max_buf = 80;
        var min_buf = 50;
        ScareBuffer = clamp(ScareBuffer++, min_buf, max_buf);
    }
    
    ScareBuffer--;
    brave_timer--;
    
    if (scare_jump_buffer > 0)
        scare_jump_buffer--;
    
    if (ScareBuffer <= 0 && state == states.boxxedpep)
    {
        state = states.Nhookshot;
        sprite_index = walkspr;
        ScareBuffer = 0;
        scare_jump = false;
    }
}
