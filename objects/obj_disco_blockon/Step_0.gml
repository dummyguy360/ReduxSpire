image_alpha = (global.dancetimer == 0) ? 0.7 : 1;
sprite_index = (global.dancetimer == 0) ? spr_danceblock_visualoverlay : Sprite418;

if (place_meeting(x, y, obj_player) && sprite_index == Sprite418)
{
    if (obj_player.vsp > 5)
        obj_player.y -= obj_player.vsp;
    
    obj_player.y -= 5;
}
