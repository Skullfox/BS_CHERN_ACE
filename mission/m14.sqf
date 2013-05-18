/*
Missionsbeschreibung:

Radiotower

*/

//general setting

private ["_newmarker","_tower"];
if (!isServer) exitWith {};
hint"missions 14";
#include "settings.sqf";

//setting up marker


_newmarker = createMarker ["_mission14",getmarkerpos "m14"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;


//setting up tower

_tower = createVehicle [_antenne, getMarkerPos "m14", [], 0, "can_collide"];


["m14_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m14_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m14_1"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m14_2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m14_1"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m14_2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m14"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//setting task
sleep 30;
["Mission14",localize "str_radiotower", localize "str_m_radiotower",true,[]] call SHK_Taskmaster_add;

while {(alive _tower)} do  {sleep 10}; 

["Mission14","succeeded"] call SHK_Taskmaster_upd;
sleep 10;
deleteMarker _newmarker;
execVM "waiting.sqf";    


















