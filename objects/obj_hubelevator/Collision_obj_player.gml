if (state == elevatorstates.normal && other.state != states.comingoutdoor && other.hsp == 0 && other.grounded && other.key_up2)
{
    state = elevatorstates.selecting;
    playerID = other.id;
    other.state = states.actor;
    other.key_up2 = 0;
    other.movespeed = 0;
    other.hsp = 0;
    other.sprite_index = other.spr_idle;
    other.image_speed = 0.35;
}
