/*
Missionsbeschreibung:

Radio Station 

*/

//general setting

private ["_newmarker","_gen","_ant"];
if (!isServer) exitWith {};
hint"missions 9";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission9",getmarkerpos "m9"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m9_3"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m9_4"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m9_5"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m9_6"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m9_7"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m9"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m9"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m9"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//fahrzeug 

_gen = createVehicle [_dummyGen, getMarkerPos "m9_1", [], 0, ""];
_ant = createVehicle [_antenne1, getMarkerPos "m9_2", [], 0, ""];

//setting task
sleep 30;
["Mission9",localize "str_radiostation", localize "str_m_radiostation",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _gen) AND (alive _ant)} do  {sleep 10}; 

["Mission9","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















