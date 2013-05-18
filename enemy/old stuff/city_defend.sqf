//City

//check


private ["_marker","_radius","_gruppen","_staticmg"];
_marker = _this select 0;
_radius = 300;


//anzahl der gruppen


_gruppen = ["2","4","6"] call BIS_fnc_selectRandom;
_staticmg = ["1","2","3"] call BIS_fnc_selectRandom;

//citymarker


 switch (_gruppen) do
 {
     case "2":
     {
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_staticmg] execvm "enemy\dshkm.sqf";
         [_marker,_radius] execvm "enemy\taskDefend_TK_INS_Group.sqf";
     };

     case "4":
     {
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_ATTeam.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_staticmg] execvm "enemy\dshkm.sqf";
         [_marker,_radius] execvm "enemy\taskDefend_TK_INS_Group.sqf";
     };  
  
     case "6":
     {
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_ATTeam.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_radius] execvm "enemy\taskPatrol_TK_INS_Group.sqf";
         [_marker,_staticmg] execvm "enemy\dshkm.sqf";
         [_marker,_radius] execvm "enemy\taskDefend_TK_INS_Group.sqf";
     };
};
