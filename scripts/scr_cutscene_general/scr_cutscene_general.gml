function cutscene_wait(arg0)
{
    timer++;
    
    if (timer >= arg0)
    {
        timer = 0;
        
        with (obj_cutsceneManager)
            cutscene_event_end();
    }
    
    exit;
}

function cutscene_end_player()
{
    obj_player.state = states.normal;
    obj_player.hsp = 0;
    obj_player.vsp = 0;
    obj_player.sprite_index = obj_player.spr_idle;
    cutscene_event_end();
}

function cutscene_start_player()
{
    obj_player.state = states.actor;
    obj_player.hsp = 0;
    obj_player.vsp = 0;
    obj_player.sprite_index = obj_player.spr_idle;
    cutscene_event_end();
}

function cutscene_create_instance(arg0, arg1, arg2)
{
    instance_create(arg0, arg1, arg2);
    cutscene_event_end();
}

function cutscene_do_func(arg0)
{
    arg0();
    cutscene_event_end();
}

function cutscene_with_actor(arg0, arg1)
{
    var finish = false;
    var _realActor = cutscene_get_actor(arg0);
    cutscene_event_end();
    
    with (_realActor)
        return arg1();
}

function cutscene_do_dialog(arg0, arg1 = false)
{
    queue_dialogue(arg0, arg1);
    
    with (obj_dialogue)
        instant_destroy = arg1;
    
    cutscene_event_end();
}

function cutscene_wait_dialog()
{
    var finish = 0;
    
    if (!instance_exists(obj_dialogue) && !instance_exists(obj_dialogue_choices))
        finish = true;
    
    if (finish)
        cutscene_event_end();
}

function cutscene_lerp_actor(arg0, arg1, arg2, arg3)
{
    var finish = false;
    var _realActor = cutscene_get_actor(arg0);
    
    with (_realActor)
    {
        x = lerp(x, arg1, arg3);
        y = lerp(y, arg2, arg3);
        
        if (distance_to_point(arg1, arg2) <= 4)
        {
            finish = true;
            x = arg1;
            y = arg2;
        }
    }
    
    if (finish)
        cutscene_event_end();
}

function cutscene_move_actor(arg0, arg1, arg2, arg3)
{
    var finish = false;
    var _realActor = cutscene_get_actor(arg0);
    
    with (_realActor)
    {
        var _angel = point_direction(x, y, arg1, arg2);
        var _dirx = lengthdir_x(arg3, _angel);
        var _diry = lengthdir_y(arg3, _angel);
        x = approach(x, arg1, _dirx);
        y = approach(y, arg2, _diry);
        
        if (x == arg1 && y == arg2)
            finish = true;
    }
    
    if (finish || !_realActor)
        cutscene_event_end();
}

function cutscene_new_actor(arg0, arg1, arg2, arg3)
{
    var _new_actor = instance_create(arg0, arg1, obj_actor);
    _new_actor.sprite_index = arg2;
    
    with (_new_actor)
        cutscene_declare_actor(id, arg3);
    
    cutscene_event_end();
    return _new_actor;
}

function cutscene_actor_animend(arg0)
{
    var finish = 0;
    var _realActor = cutscene_get_actor(arg0);
    
    with (_realActor)
    {
        if (animation_end())
            finish = 1;
    }
    
    if (finish == 1)
        cutscene_event_end();
}
