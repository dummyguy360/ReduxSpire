targetRoom = estate_1;
targetDoor = "A";
level = "estate";
details = 
[
	gate_createlayer(spr_chocoa_startgate, 0), 
	gate_createlayer(spr_chocoa_startgate, 1), 
	gate_createlayer(spr_chocoa_startgate, 2, 0.55), 
	gate_createlayer(spr_chocoa_startgate, 3, 0.33), 
	gate_createlayer(spr_chocoa_startgate, 4, 0), 
	gate_createlayer(spr_chocoa_startgate, 5, 0.11)
];
info = 
{
    bginfo: [spr_chocoacard_bg, cardtype.left, cardtype.linear, cardtype.none, 0, 0],
    titleinfo: [spr_chocoacard_title, cardtype.up, cardtype.interp, cardtype.waving, 764, 100],
    song: mu_entryway_title
};
