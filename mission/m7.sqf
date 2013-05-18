/*
Missionsbeschreibung:

Feidliche AA Stellung

*/

//general setting

private ["_newmarker","_aa"];
if (!isServer) exitWith {};
hint"missions 7";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission7",getmarkerpos "m7"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m7"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m7_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m7_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m7_3"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m7"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m7"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m7_2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//fahrzeug + statics

_aa = createVehicle [_eDummyAA, getMarkerPos "m7", [], 0, ""];

createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m7_5", [], 0, "can_collide"];




//setting task
sleep 30;
["Mission7",localize "str_aa", localize "str_m_aa",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _aa)} do  {sleep 10}; 

["Mission7","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















