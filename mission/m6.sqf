/*
Missionsbeschreibung:

Feidliches Fahrzeug

*/

//general setting

private ["_newmarker","_tank","_static1","_static2"];
if (!isServer) exitWith {};
hint"missions 6";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission6",getmarkerpos "m6"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m6_2"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m6_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m6_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m6_4"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m6_5"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m6_8"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m6"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m6"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//fahrzeug + statics

_tank = createVehicle [_eDummyTank, getMarkerPos "m6_1", [], 0, ""];
_tank lock true;
_tank setdir -397.956;
_static1 = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m6_7", [], 0, "can_collide"];
_static1 setPos [(getPos _static1 select 0),(getPos _static1 select 1),0];

_static2 = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m6_6", [], 0, "can_collide"];
_static2 setPos [(getPos _static2 select 0),(getPos _static2 select 1),0];


//setting task
sleep 30;
["Mission6",localize "str_v_tank", localize "str_m_v_tank",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _tank)} do  {sleep 10}; 

["Mission6","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















