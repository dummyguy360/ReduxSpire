var bID = baddieID;

if (!instance_exists(baddieID))
    instance_destroy();

if (instance_exists(baddieID))
{
    x = baddieID.x;
    y = baddieID.y;
    image_xscale = baddieID.image_xscale;
}

if (instance_exists(baddieID) && !baddieID.invincible && place_meeting(x, y, obj_player) && obj_player.cutscene == 0 && obj_player.state != states.hurt)
{
    if (baddieID.state != baddiestate.grabbed)
    {
        with (obj_player)
        {
            if (instakillmove == true && other.baddieID.invtime <= 0)
            {
                if (instance_exists(obj_creamThief))
                {
                    with (obj_creamThief)
                    {
                        tauntstoredmovespeed = movespeed;
                        tauntstoredvsp = vsp;
                        tauntstoredstate = state;
                        vsp = 0;
                        movespeed = 0;
                        state = states.charge;
                    }
                }
                
                var angle = point_direction(other.baddieID.x, other.baddieID.y, x + hsp, y + vsp);
                var ymovespeed = 2 + abs(vsp);
                var vdirection = sign(round(hsp + (xscale / 2)));
                scr_sound(sound_punch);
                scr_sleep();
                other.baddieID.initialvsp = clamp(-lengthdir_y(ymovespeed, angle) - 2, -25, random_range(-1, -15));
                other.baddieID.initialhsp = vdirection * (random_range(1, 7) + abs(floor(hsp * 1.2)));
                other.baddieID.image_xscale = -xscale;
                
                with (instance_create(other.baddieID.x, other.baddieID.y, obj_machalleffect))
                    sprite_index = spr_kungfuEffect;
                
                with (instance_create(other.baddieID.x, other.baddieID.y, obj_machalleffect))
                    sprite_index = spr_parryeffect;
                
                repeat (6)
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
                
                other.baddieID.hsp = image_xscale * abs(obj_player.hsp);
                other.baddieID.vsp = -10;
                other.baddieID.sprite_index = bID.deadspr;
                other.baddieID.flash = true;
                other.baddieID.state = baddiestate.stun;
                bID.stunned = 200;
                other.baddieID.invtime = 20;
                other.baddieID.throw_hit = 1;
                other.baddieID.setfordeath = 1;
                camera_shake(3, 3);
                
                if (state == states.mach3 && sprite_index != spr_player_PZ_superJump_cancel && sprite_index != spr_player_PZ_mach3_hit)
                {
                    sprite_index = spr_player_PZ_mach3_hit;
                    image_index = 0;
                }
                
                if ((mach3Roll > 0 || sprite_index == spr_player_PZ_machRoll3_intro || sprite_index == spr_player_PZ_machRoll3) && state == states.machroll)
                {
                    mach3Roll = mach3RollMax;
                    mach3Roll = 30;
                    flash = false;
                    
                    if (grounded)
                    {
                        sprite_index = spr_player_PZ_machRoll3_intro;
                        image_index = 0;
                    }
                }
                
                if (!grounded && state != states.freefall && (key_jump2 || inputBufferJump > 0))
                {
                    suplexmove = 0;
                    vsp = -11;
                }
                
                if (state == states.pizzanokungfu || state == states.frostburnspin)
                {
                    if (bID.hsp < obj_player.hsp)
                        bID.hsp = obj_player.hsp;
                    
                    bID.hsp++;
                    bID.vsp = -5;
                    bID.invtime = 10;
                    bID.thrown = true;
                    bID.setfordeath = false;
                }
                
                if (vsp < 0)
                {
                    other.baddieID.squashedx = true;
                    other.baddieID.squashvalx = 1;
                }
                else
                {
                    other.baddieID.squashedy = true;
                    other.baddieID.squashvaly = 1;
                }
            }
            
            if (state == states.cottonroll && movespeed <= 8)
            {
                if (!audio_is_playing(sound_bump))
                    scr_sound(sound_bump);
                
                other.baddieID.stuntouch = 50;
                other.baddieID.state = baddiestate.stun;
                
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100;
                
                other.baddieID.image_xscale = -xscale;
                other.baddieID.hsp = -other.baddieID.image_xscale * 5;
                other.baddieID.vsp = -4;
            }
            
            if (instance_exists(other.baddieID) && other.baddieID.object_index != obj_eyescream && y < other.baddieID.y && attacking == 0 && state == states.jump && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep)
            {
                scr_sound(sound_enemyslap);
                suplexmove = 0;
                
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1;
                
                if (vsp > 0)
                {
                    other.baddieID.squashedx = true;
                    other.baddieID.squashvalx = 0;
                    other.baddieID.stunned = 200;
                    
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                    
                    image_index = 0;
                    
                    if (key_jump2)
                    {
                        other.baddieID.vsp = -5;
                        other.baddieID.hsp = -other.baddieID.image_xscale * 3;
                        instance_create(x, y + 50, obj_stompeffect);
                        other.baddieID.state = baddiestate.stun;
                        stompAnim = 1;
                        other.baddieID.image_index = 0;
                        vsp = -14;
                        sprite_index = spr_stompprep;
                    }
                    else
                    {
                        other.baddieID.vsp = -5;
                        other.baddieID.hsp = -other.baddieID.image_xscale * 3;
                        instance_create(x, y + 50, obj_stompeffect);
                        other.baddieID.state = baddiestate.stun;
                        stompAnim = 1;
                        other.baddieID.image_index = 0;
                        vsp = -9;
                        sprite_index = spr_stompprep;
                    }
                }
            }
            
            if (instance_exists(other.baddieID) && state == states.cotton && sprite_index == spr_player_PZ_werecotton_drill_h)
            {
                with (other.baddieID)
                {
                    cottoned = true;
                    alarm[2] = 1;
                    instance_create(x, y, obj_bangeffect);
                    scr_sound(sound_slaphit);
                    hp = 0;
                    thrown = true;
                    hsp = obj_player.xscale * 20;
                    vsp = -6;
                    state = baddiestate.stun;
                    stunned = 500;
                }
            }
            
            if (instance_exists(other.baddieID) && state == states.mach1)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1;
                
                global.hit += 1;
                global.combotime = 60;
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar);
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs);
                other.baddieID.flash = 1;
                other.baddieID.hp = 0;
                scr_sound(sound_enemystomp);
                instance_create(x, y, obj_bumpeffect);
                other.baddieID.stunned = 200;
                
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                
                other.baddieID.vsp = -5;
                other.baddieID.hsp = -other.baddieID.image_xscale * 5;
                hsp = -xscale * 4;
                vsp = -4;
                machpunchAnim = true;
                
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                
                other.baddieID.state = baddiestate.stun;
                image_index = 0;
                sprite_index = spr_canehit;
                state = states.tackle;
                
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.id);
                    instance_destroy(other.baddieID);
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1;
                    vsp = -5;
                }
            }
            
            if (instance_exists(other.baddieID) && !other.baddieID.throw_hit && bID.invtime <= 0 && (state == states.mach2 || state == states.machroll || state == states.pizzanosidejump || state == states.pizzanoshoulderbash) && attacking && !instakillmove && other.baddieID.grounded == 1)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1;
                
                global.hit += 1;
                global.combotime = 60;
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar);
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs);
                bID.invtime = 10;
                scr_sound(sound_enemystomp);
                instance_create(x, y, obj_bumpeffect);
                
                if (x != bID.x)
                    bID.image_xscale = sign(bID.x - x);
                else
                    bID.image_xscale = -xscale;
                
                other.baddieID.vsp = (y - 180 - other.baddieID.y) / 60;
                other.baddieID.hsp = image_xscale * 12;
                other.baddieID.squashedx = true;
                other.baddieID.squashvalx = 0;
                other.baddieID.image_index = 0;
                machpunchAnim = true;
                other.baddieID.stunned = 200;
                other.baddieID.state = baddiestate.stun;
                bID.invtime = 5;
            }
            
            if (instance_exists(other.baddieID) && state == states.pizzanopummel && other.baddieID.state != baddiestate.grabbed && other.baddieID.invtime <= 0)
            {
                global.combotime = 60;
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar);
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs);
                instance_create(other.baddieID.x, other.baddieID.y, obj_bangeffect);
                
                with (instance_create(other.baddieID.x, other.baddieID.y, obj_bangeffect))
                    sprite_index = spr_enemypuncheffect;
                
                other.baddieID.sprite_index = other.baddieID.deadspr;
                other.baddieID.vsp = -5;
                other.baddieID.hsp = xscale * 9;
                other.baddieID.thrown = 1;
                other.baddieID.kunghit = 1;
                other.baddieID.invtime = 120;
                other.baddieID.flash = 1;
                other.baddieID.throw_hit = 1;
                
                if (!grounded && key_jump2)
                {
                    vsp = -12;
                    
                    if (kungaircount == 0)
                        kungaircount = 1;
                }
                
                camera_shake(10, 50);
                
                if (vsp < 0)
                {
                    other.baddieID.squashedx = true;
                    other.baddieID.squashvalx = 1;
                }
                else
                {
                    other.baddieID.squashedy = true;
                    other.baddieID.squashvaly = 1;
                }
                
                scr_sound(sound_punch);
                scr_sound(choose(sound_punch2, sound_punch3));
                other.baddieID.image_index = 0;
                machpunchAnim = true;
                other.baddieID.stunned = 200;
                other.baddieID.state = baddiestate.stun;
            }
            
            if (instance_exists(other.baddieID) && !other.baddieID.throw_hit && other.baddieID.state != baddiestate.charge && attacking == 0 && state != states.tackle && state != states.hurt && !y < other.baddieID.y && !y > other.baddieID.y && grabbing == 0 && other.baddieID.state != baddiestate.stun && state != states.handstandjump && state != states.Nhookshot)
            {
                if (x != other.baddieID.x)
                {
                    other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                    xscale = -sign(x - other.baddieID.x);
                }
                
                hsp = -xscale * 8;
                
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1;
                
                vsp = -4;
                other.baddieID.image_xscale = -xscale;
                other.baddieID.hsp = -other.baddieID.image_xscale * 4;
                other.baddieID.vsp = -4;
                
                if (other.baddieID.state == baddiestate.walk || other.baddieID.state == baddiestate.turn)
                    other.baddieID.state = baddiestate.stun;
                
				//even march source has it as 87 lmao
				//aka this is old unused code
                if (other.baddieID.state == 87)
                {
                    stunned = 30;
                    other.baddieID.state = baddiestate.stun;
                }
                
                image_index = 0;
                state = states.bump;
                
				//same here
                if (other.baddieID.state == 96)
                    other.baddieID.state = baddiestate.stun;
            }
            
            if (state == states.handstandjump && other.baddieID.object_index != obj_charcherry)
            {
                scr_sound(sound_slaphit);
                baddiegrabbedID = other.baddieID.id;
                
                with (other.baddieID)
                {
                    state = baddiestate.grabbed;
                    instance_create(x + (other.xscale * 40), y, obj_punchdust);
                }
                
                if (bID.object_index == obj_painter)
                {
                    with (bID)
                        scr_grab_boss();
                }
                
                if (movespeed <= 10)
                {
                    state = states.grab;
                    sprite_index = spr_player_PZ_hauling_intro;
                    image_index = 0;
                }
                else
                {
                    sprite_index = spr_player_PZ_swingDing;
                    movespeed = max(movespeed, 10);
                    state = states.charge;
                }
                
                if (!grounded)
                    vsp = -6;
                
                if (key_up)
                {
                    state = states.superslam;
                    sprite_index = spr_player_PZ_pileDriver_intro;
                    vsp = -14;
                    grounded = false;
                    image_index = 0;
                    image_speed = 0.35;
                }
            }
        }
    }
}

if (!instance_exists(baddieID))
    instance_destroy();
