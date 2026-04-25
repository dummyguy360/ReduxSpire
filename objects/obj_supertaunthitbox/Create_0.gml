if (obj_player.supertauntcharged == false)
    instance_destroy();

with (obj_baddie)
{
    if (bbox_in_camera(view_camera[0]) && !invincible)
    {
        instance_create(x, y, obj_bangeffect);
        
        with (instance_create(x, y, obj_machalleffect))
            sprite_index = spr_enemypuncheffect;
        
        with (instance_create(x, y, obj_machalleffect))
            sprite_index = spr_parryeffect;
        
        repeat (3)
        {
            instance_create(x, y, obj_slapstar);
            instance_create(x, y, obj_baddiegibs);
            
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
        }
        
        debris = false;
        instance_destroy();
        
        with (instance_create(x, y, obj_shake))
        {
            sprite_index = other.deadspr;
            spr_palette = other.spr_palette;
            paletteselect = other.paletteselect;
            alarm[0] = 20;
        }
    }
}
