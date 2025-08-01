if (!instance_exists(ID) || (obj_player.state == states.mach3 || obj_player.state == states.pizzanoshoulderbash || obj_player.state == states.pizzanosidejump || obj_player.state == states.minecart))
    instance_destroy();

if (instance_exists(ID))
{
    x = ID.x;
    y = ID.y;
    image_xscale = ID.image_xscale;
    image_index = ID.image_index;
    
    with (ID)
    {
        switch (object_index)
        {
            case obj_knight:
                if (state != states.frozen && state != states.Nhookshot)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
            
            case obj_bee:
                if (state != states.frozen && state != states.Nhookshot)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
                
                break;
            
            case obj_sluggy:
                if (state != states.knightpepattack && state != states.stunned)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
                
                break;
            
            case obj_charger:
                if (state != states.normal && sprite_index != spr_banana_charge)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
                
                break;
            
            case obj_swedishfish:
                if (state != states.charge)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
            
            case obj_melon:
                if (state != states.meteorpep)
                {
                    hitboxcreate = 0;
                    instance_destroy(other.id);
                }
                
                break;
            
            case obj_doggy:
                if (sprite_index != spr_badmarsh_rage)
                    instance_destroy(other.id);
                
                break;
            
            case obj_babybear:
                if (state != states.stunned && state != states.frozen)
                    instance_destroy(other.id);
                
                break;
        }
    }
}
