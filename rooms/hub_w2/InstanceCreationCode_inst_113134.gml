targetRoom = mountain_intro;
targetDoor = "A";
level = "fudge";
var a = gate_createlayer(567, 5, 0, 0);

with (a)
    drawy = 50;

details = [gate_createlayer(spr_fudge_startgate, 0), gate_createlayer(spr_fudge_startgate, 1), gate_createlayer(spr_fudge_startgate, 2, 1), gate_createlayer(spr_fudge_startgate, 3, 0.66), gate_createlayer(spr_fudge_startgate, 4, 0.33), a];
info = 
{
    bginfo: [1563, UnknownEnum.Value_2, UnknownEnum.Value_4, UnknownEnum.Value_8, 0, 0],
    titleinfo: [1629, UnknownEnum.Value_0, UnknownEnum.Value_5, UnknownEnum.Value_6, 0, 0],
    song: 0
};
