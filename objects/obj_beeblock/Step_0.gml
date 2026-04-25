if ((place_meeting(x + 16, y, obj_donutShitted) || place_meeting(x - 16, y, obj_donutShitted)) && obj_donutShitted.bigShot == true)
{
    instance_destroy();
    instance_destroy(obj_donutShitted);
}
