function scr_commonenemy()
{
    if (invtime > 0 && global.freezeframe == false)
        invtime -= 1;
    
    if (setfordeath && !global.hitstunEnabled)
    {
        eliteHP--;
        
        if (eliteEnemy && eliteHP != 0 && !important)
        {
            global.combo++;
            var _score = 10 * power(2, global.combo - 1);
            _score = clamp(_score, 10, 80);
            _score = round(_score / eliteHPMax);
            create_small_number(x, y, string(_score));
            global.collect += _score;
            global.combotime = 60;
            global.style += 4;
            global.combofreeze = 30;
            
            if (object_index == obj_googlyjuice && chance(0.5))
            {
                with (instance_create(x, y, obj_puddle))
                {
                    hsp = other.hsp;
                    vsp = -4;
                }
            }
        }
        
        if (!eliteEnemy || eliteHP <= 0)
        {
            if (destroyable)
                instance_destroy();
        }
        
        setfordeath = 0;
    }
    
    if (eliteHP > eliteHPMax)
        eliteHPMax = eliteHP;
    
    if (global.freezeframe == true && state != baddiestate.frozen)
    {
        frozenstate = state;
        frozenspriteindex = sprite_index;
        frozenimageindex = image_index;
        frozenimagespeed = image_speed;
        frozenmovespeed = movespeed;
        frozengrav = grav;
        frozenhsp = hsp;
        frozenvsp = vsp;
        state = baddiestate.frozen;
    }
}

function use_heat()
{
    return eliteEnemy || global.martian_alarmed;
}
