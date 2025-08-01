selected = 0;
playerPauseSprite = 1113;

switch (obj_player.character)
{
    case "N":
        playerPauseSprite = 1476;
        break;
    
    case "G":
        playerPauseSprite = 1594;
        break;
    
    case "C":
        playerPauseSprite = 1113;
        break;
}

playerCustomPalette = obj_player.custompalette;
playerSPalette = obj_player.custompalette ? obj_player.surf_pallete : obj_player.spr_palette;
playerPalSelect = obj_player.paletteselect;

if (!instance_exists(obj_pausefadeout))
{
    with (instance_create(x, y, obj_pausefadeout))
    {
        fadein = true;
        fadealpha = 0;
    }
}

pausecount = 29;
