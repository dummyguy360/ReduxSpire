function state_player_Sjumpprep()
{
    combo = 0;
    mach2 = 0;
    move = key_left + key_right;
    
    if (sprite_index == spr_player_PZ_superJump_prep)
    {
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = xscale * movespeed;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (xscale * movespeed) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (xscale * movespeed) + 5;
        
        if (movespeed >= 0)
            movespeed -= 0.8;
    }
    
    if (sprite_index == spr_player_PZ_superJump_prep_flash || sprite_index == spr_player_PZ_superJump_prep_right || sprite_index == spr_player_PZ_superJump_prep_left)
    {
        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
            hsp = move * 2;
        else if (place_meeting(x, y + 1, obj_railh))
            hsp = (move * 2) - 5;
        else if (place_meeting(x, y + 1, obj_railh2))
            hsp = (move * 2) + 5;
    }
    
    if (sprite_index != spr_player_PZ_superJump_prep)
    {
        if (sign(hsp) == 0)
        {
            sprite_index = spr_player_PZ_superJump_prep_flash;
        }
        else if (sign(hsp) == 1)
        {
            if (xscale == 1)
                sprite_index = spr_player_PZ_superJump_prep_right;
            else if (xscale == -1)
                sprite_index = spr_player_PZ_superJump_prep_left;
        }
        else if (xscale == 1)
            sprite_index = spr_player_PZ_superJump_prep_left;
        else if (xscale == -1)
        {
            sprite_index = spr_player_PZ_superJump_prep_right;
        }
    }
    
    alarm[4] = 14;
    jumpAnim = true;
    landAnim = false;
    machslideAnim = true;
    crouchAnim = true;
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_PZ_superJump_prep)
        sprite_index = spr_player_PZ_superJump_prep_flash;
    
    if (!key_up && grounded && (sprite_index == spr_player_PZ_superJump_prep_flash || sprite_index == spr_player_PZ_superJump_prep_left || sprite_index == spr_player_PZ_superJump_prep_right) && !scr_solid(x, y - 16) && !scr_solid(x, y - 32))
    {
        scr_sound(sfx_pz_superjumpRelease);
        instance_create(x, y, obj_mushroomCloudEffect);
        sprite_index = spr_player_PZ_superJump;
        state = states.Sjump;
        vsp = -12;
        verticalMovespeed = vsp;
        Sjumpcan_doublejump = false;
    }
    
    image_speed = 0.35;
}
