var curMsg = global.dialogmsg[current_message];
var dialogLength = array_length(global.dialogmsg);
var _func = curMsg[3];

if (_func != -4)
    _func();

if (state != states.Nhookshot)
{
    drawchar = 0;
    
    if (current_message == (dialogLength - 1))
        state = states.normal;
    else
        current_message++;
}

force_next = false;
