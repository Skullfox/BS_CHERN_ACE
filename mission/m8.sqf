/*
Missionsbeschreibung:

Black Hawk sprengen

*/

//general setting

private ["_newmarker","_uh60"];
if (!isServer) exitWith {};
hint"missions 8";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission8",getmarkerpos "m8"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m8"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m8_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m8_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m8_3"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m8_4"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m8_5"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m8"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m8"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m8"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//fahrzeug 

_uh60 = createVehicle [_wreckHeliW, getMarkerPos "m8_1", [], 0, ""];
_uh60 setDamage 0.5;
_uh60 setCaptive true;
_uh60 lock true;
//setting task
sleep 30;
["Mission8",localize "str_d_heli", localize "str_m_d_heli",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _uh60)} do  {sleep 10}; 

["Mission8","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















