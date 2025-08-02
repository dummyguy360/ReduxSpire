with (playerID)
{
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = -20;
        vsp = 0;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = -20;
        vsp = -20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = -20;
        vsp = 20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = 0;
        vsp = 20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = 0;
        vsp = -20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = 20;
        vsp = 20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = 20;
        vsp = 0;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
    
    with (create_afterimage(choose(afterimages.blue, afterimages.pink), xscale))
    {
        hsp = 20;
        vsp = -20;
        alarm[0] = 60;
        alarm[1] = 999;
        gonealpha = 1;
        image_alpha = 1;
    }
}

instance_destroy();
