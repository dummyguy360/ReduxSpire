function state_player_finishingblow()
{
    move = key_right + key_left;
    hsp = movespeed;
    
    if (animation_end())
    {
        state = states.normal;
        movespeed = abs(movespeed);
        
        if (sprite_index == spr_player_PZ_swingDing_end && key_attack)
        {
            state = states.mach2;
            movespeed = max(movespeed, 6);
        }
    }
    
    var throw_frame = 6;
    
    if (sprite_index == spr_player_PZ_swingDing_end)
        throw_frame = 0;
    
    if (floor(image_index) < throw_frame && sprite_index != spr_player_PZ_swingDing_end)
        movespeed = approach(movespeed, 0, 1);
    else
        movespeed = approach(movespeed, -xscale * 4, 0.5);
    
    if (floor(image_index) >= throw_frame && !instance_exists(obj_swordhitbox) && instance_exists(baddiegrabbedID))
    {
        vsp = -5;
        scr_sound(sound_punch);
        scr_sound(sound_killingblow);
        instance_create(x, y, obj_swordhitbox);
        
        with (baddiegrabbedID)
        {
            instance_create(x, y, obj_slapstar);
            instance_create(x, y, obj_baddiegibs);
            
            if (!scr_solid(other.x + (60 * obj_player.xscale), y) && !scr_slope(other.x + (60 * obj_player.xscale), y))
                x = obj_player.x + (60 * obj_player.xscale);
            else
                x = obj_player.x;
            
            y = obj_player.y - 16;
            instance_create(x, y, obj_bangeffect);
            
            with (instance_create(x, y, obj_machalleffect))
                sprite_index = spr_parryeffect;
            
            with (instance_create(x, y, obj_radiating_particle))
            {
                sprite_index = spr_fuckassOrb;
                image_speed = 0;
                canRotate = 0;
                minSpd = 7;
                maxSpd = 10;
                lifeTime = 10;
                alarm[0] = 10;
            }
            
            hp = 0;
            flash = 1;
            alarm[1] = 5;
            thrown = true;
            
            if (other.sprite_index != spr_player_PZ_finishingBlow_uppercut)
            {
                hsp = obj_player.xscale * 25;
                vsp = 0;
            }
            else
            {
                vsp = -25;
                hsp = 0;
                flyup = true;
            }
            
            state = states.cheesepep;
            stunned = 9999;
        }
        
        global.combotime = 60;
        global.hit += 1;
    }
    
    image_speed = 0.4;
    landAnim = false;
}
