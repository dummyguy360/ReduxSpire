/// @desc Hurts player. Returns whether or not player is in hurt state after function is called.
/// @param {id} [player] 
/// @param {real} [movespeed]
/// @returns {bool} whether or not player is in hurt state
function scr_hurtplayer(player = obj_player, mspeed)
{
    if (!global.freezeframe && player.state != states.actor && player.state != states.parry && player.state != states.hurt)
    {
        with (player)
        {
            if (cutscene == 1)
                continue;
            
            if ((state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes) && cutscene == 0)
                continue;
            
            if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
                continue;
            
            if (state == states.minecart)
            {
                sprite_index = spr_player_PZ_hitWall_mach3;
                state = states.bump;
                hsp = 2.5 * xscale;
                vsp = -3;
                mach2 = 0;
                image_index = 0;
                instance_create(x, y, obj_bombexplosion);
                
                for (var i = 0; i < (sprite_get_number(spr_minecartdebris_new) - 1); i++)
                {
                    with (instance_create(x + irandom_range(-9, 9), y + irandom_range(-9, 9), obj_debris))
                    {
                        sprite_index = spr_minecartdebris_new;
                        image_index = i;
                        vsp = floor(random_range(-5, -9));
                        hsp = floor(random_range(-5, 7));
                    }
                }
            }
            else if (state == states.bombpep && hurted == 0) { }
            else if (state == states.boxxedpep) { }
            else if (state == states.bottlerocket || (state == states.pizzanokungfu && flash)) { }
            else if (state == states.frostburnspin) { }
            else if (state != states.hurt && state != states.backbreaker && hurted == 0 && cutscene == 0 && state != states.bump && state != states.tumble)
            {
                scr_sound(sound_touchspike);
                instance_create(x, y, obj_bangeffect);
                
                with (instance_create(x, y, obj_bangeffect))
                    sprite_index = spr_parryeffect;
                
                global.hurtcounter += 1;
                state = states.hurt;
                alarm[8] = 60;
                alarm[7] = 120;
                hurted = 1;
                
                if (chance_update(50))
                {
                    var a = scr_sound(choose(sfx_PZvoice_hurt1, sfx_PZvoice_hurt2, sfx_PZvoice_hurt3, sfx_PZvoice_hurt4, sfx_PZvoice_hurt5, sfx_PZvoice1));
                    audio_sound_pitch(a, random_range(0.95, 1.05));
                }
                
                if (xscale == other.image_xscale)
                    sprite_index = spr_hurtjump;
                else
                    sprite_index = spr_hurt;
                
                if ((global.hurtcounter % 10) == 0 && global.hurtcounter >= 10)
                    scr_queue_tvanim(choose(spr_tvHUD_player_PZ_hurtExp_1, spr_tvHUD_player_PZ_hurtExp_2, spr_tvHUD_player_PZ_hurtExp_3, spr_tvHUD_player_PZ_hurtExp_4, spr_tvHUD_player_PZ_hurtExp_5, spr_tvHUD_player_PZ_hurtExp_6, spr_tvHUD_player_PZ_hurtExp_7, spr_tvHUD_player_PZ_hurtExp_8, spr_tvHUD_player_PZ_hurtExp_9, spr_tvHUD_player_PZ_hurtExp_10), 150);
                else
                    scr_queue_tvanim(obj_tv.hurttvspr, 60);
                
                if (!is_undefined(arg1))
                    movespeed = arg1;
                else
                    movespeed = 8;
                
                vsp = -12;
                player_hurt_buffer = 100;
                timeuntilhpback = 300;
                global.combotime = clamp(global.combotime - 0.5, 0, 60);
                var _oldcollect = global.collect;
                
                if (global.collect > 100)
                    global.collect -= 100;
                else
                    global.collect = 0;
                
                var _repeat = clamp(round((_oldcollect - global.collect) / 10), 0, 15);
                
                if (_oldcollect > 0)
                {
                    with (instance_create(x, y, obj_pointLoseNumber))
                    {
                        image_blend = c_red;
                        number = string(global.collect - _oldcollect);
                    }
                    
                    repeat (_repeat)
                        instance_create(x, y, obj_pizzaloss);
                }
                
                instance_create(x, y, obj_spikehurteffect);
                
                repeat (5)
                {
                    with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_radiating_particle))
                    {
                        sprite_index = spr_fuckassOrb;
                        image_speed = 0;
                        canRotate = 0;
                        minSpd = 7;
                        maxSpd = 10;
                        lifeTime = 10;
                        alarm[0] = 10;
                    }
                    
                    instance_create(x, y, obj_hurtStars);
                }
                
                image_index = 0;
                flash = 1;
                global.style -= 15;
                
                with (obj_bosscontroller)
                    event_user(1);
                
                return true;
            }
        }
    }
    
    return false;
}
