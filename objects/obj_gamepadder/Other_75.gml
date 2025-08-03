show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch (async_load[? "event_type"])
{
    case "gamepad discovered":
        var padnew = async_load[? "pad_index"];
        
        if (global.player_input_device <= 0)
        {
            if (room != realtitlescreen)
            {
                gamepad_discovered = 1;
                confirmspr = spr_chargershitbox;
            }
        }
        
        break;
    
    case "gamepad lost":
        var padlost = async_load[? "pad_index"];
        
        if (global.player_input_device == padlost)
        {
            global.player_input_device = noone;
            device_to_reconnect = 1;
        }
        else
        {
            gamepad_discovered = 0;
            confirmspr = spr_player_machpunch2;
        }
        
        break;
}
