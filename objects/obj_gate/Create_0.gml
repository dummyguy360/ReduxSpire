enum GateState 
{
	RAISED,
	LOWERED,
	RAISING,
	LOWERING
}

enum GateEvent 
{
	NONE,
	LOWER,
	RAISE
}

depth = 4;
image_speed = 0.35;
logicMap = ds_map_create();

canCollide = function(arg0 = 370)
{
    return currentState == UnknownEnum.Value_1;
};

if (!reversed)
{
    currentState = UnknownEnum.Value_1;
    nextState = UnknownEnum.Value_1;
    queuedEvent = UnknownEnum.Value_0;
}
else
{
    currentState = UnknownEnum.Value_0;
    nextState = UnknownEnum.Value_0;
    queuedEvent = UnknownEnum.Value_0;
    sprite_index = spr_gateRaised;
}

image_angle = round(image_angle / 90) * 90;
