function scr_transformationCheck(arg0)
{
    var _transfo = undefined;
    
    switch (arg0)
    {
        case states.cotton:
        case states.cottondrill:
        case states.cottonroll:
            _transfo = "Cottoncoated";
            break;
        
        case states.rupertnormal:
        case states.rupertjump:
        case states.rupertslide:
        case states.rupertstick:
            _transfo = "Rupert";
            break;
        
        case states.ufofloat:
            _transfo = "UFO";
            break;
        
        case states.seacream:
        case states.seacreamjump:
        case states.seacreamstick:
            _transfo = "SeaCream";
            break;
    }
    
    return _transfo;
}
