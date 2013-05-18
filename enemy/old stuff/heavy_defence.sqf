

//["r1_4"] execvm "routes\enemy\xyz.sqf";


private ["_marker","_radius","_gruppen","_staticmg"];
_marker = _this select 0;
_radius = 300;


//anzahl der gruppen


_staticmg = ["1","2","3"] call BIS_fnc_selectRandom;

[_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
[_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
[_marker,_staticmg] execvm "enemy\dshkm.sqf";
[_marker,_radius] execvm "enemy\taskDefend_TK_INS_Group.sqf";
