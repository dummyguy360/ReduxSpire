function scr_tvsprites()
{
    idletvspr = spr_tvHUD_player_PZ_idle;
    combotvspr = spr_tvHUD_player_PZ_combo;
    happytvspr = spr_tvHUD_player_PZ_happy;
    escapetvspr = spr_tvHUD_player_PZ_escapeIdle;
    tvchange1 = spr_tvHUD_player_PZ_idleAnim_1;
    tvchange2 = spr_tvHUD_player_PZ_idleAnim_2;
    cottontvspr = spr_tvHUD_player_PZ_werecotton;
    hurttvspr = spr_tvHUD_player_PZ_hurt;
    hurttvsprexp1 = 2260;
    hurttvsprexp2 = 2262;
    hurttvsprexp3 = 2263;
    hurttvsprexp4 = 2264;
    hurttvsprexp5 = 2265;
    hurttvsprexp6 = 2266;
    hurttvsprexp7 = 2267;
    hurttvsprexp8 = 2268;
    hurttvsprexp9 = 2269;
    hurttvsprexp10 = 2261;
    minecarttvspr = spr_tvHUD_player_PZ_minecart;
    firetvspr = spr_tvHUD_player_PZ_fireAss;
    angrytvspr = spr_tvHUD_player_PZ_angry;
    orbtvspr = spr_tvHUD_player_PZ_croaked;
    mach2tvspr = spr_tvHUD_player_PZ_mach2;
    mach3tvspr = spr_tvHUD_player_PZ_mach3;
    mach4tvspr = spr_tvHUD_player_PZ_mach4;
    panictvspr = spr_tvHUD_player_PZ_escapeIdle;
    secrettvspr = spr_tvHUD_player_PZ_secret;
    puddletvspr = 2279;
    spookeytvspr = 2273;
    hooktvspr = spr_tvHUD_player_PZ_hooked;
    frostburntvspr = spr_tvHUD_player_PZ_frostBurn;
    ufotvspr = spr_pizzytvufo;
    marshdogspr = spr_tvHUD_player_PZ_marshMount;
    bombtvspr = spr_pizzytvbomb;
    
    switch (obj_player.character)
    {
        case "N":
            idletvspr = spr_pizzanotv;
            combotvspr = spr_pizzanotv_combo;
            happytvspr = spr_pizzanotv_happy;
            escapetvspr = spr_pizzytv_escape1;
            tvchange1 = spr_pizzanotv2;
            tvchange2 = spr_pizzanotv2;
            cottontvspr = spr_pizzytvcotton;
            hurttvspr = spr_pizzytvhurt;
            minecarttvspr = spr_pizzytvmine;
            bombtvspr = spr_pizzytvbomb;
            firetvspr = spr_pizzytvfire;
            angrytvspr = spr_pizzytvangry;
            orbtvspr = spr_pizzytv_croaked;
            ufotvspr = spr_pizzytvufo;
            mach1tvspr = spr_pizzanotvmach1;
            mach2tvspr = spr_pizzanotvmach2;
            mach3tvspr = spr_pizzanotvmach3;
            mach4tvspr = spr_pizzanotvmach4;
            machrolltvspr = spr_pizzytvmachroll;
            frostburntvspr = spr_pizzytvflushed;
            hooktvspr = spr_pizzytvhook;
            marshdogspr = spr_pizzytvmarsh;
            panictvspr = spr_pizzytvescape;
            break;
        
        case "C":
            idletvspr = spr_coneboytv;
            escapetvspr = spr_coneboytv;
            tvchange1 = spr_coneboytv;
            tvchange2 = spr_coneboytv;
            cottontvspr = spr_coneboytv;
            hurttvspr = spr_coneboytv;
            minecarttvspr = spr_coneboytv;
            bombtvspr = spr_coneboytv;
            firetvspr = spr_coneboytv;
            angrytvspr = spr_coneboytv;
            orbtvspr = spr_coneboytv;
            ufotvspr = spr_pizzytvufo;
            mach1tvspr = spr_coneboytv;
            mach2tvspr = spr_coneboytv;
            mach3tvspr = spr_coneboytv;
            mach4tvspr = spr_coneboytv;
            frostburntvspr = spr_coneboytv;
            hooktvspr = spr_coneboytv;
            marshdogspr = spr_pizzytvmarsh;
            panictvspr = spr_pizzytvescape;
            break;
    }
}
