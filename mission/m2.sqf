/*
Missionsbeschreibung:

Töten sie den General

*/


//general setting
if (!isServer) exitWith {};
private ["_newmarker","_hostage"];
hint"missions 2";
#include "settings.sqf";
m2_ende =false;
//setting up marker


_newmarker = createMarker ["_mission2",getmarkerpos "m2"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m2_5"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m2_4"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m2_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m2"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";



//Setting up hostage

_hostage = creategroup east;
m2_hostage = _hostage createUnit [ _officer , getmarkerPos "m2_1", [], 0, "NONE"];
m2_hostage disableAI "move";



//setting task
sleep 30;
["Mission2",localize "str_assassinate_officer", localize "str_m_assassinate_officer",true,[]] call SHK_Taskmaster_add;

//setting up ending
sleep 10;

while {alive m2_hostage} do {sleep 10;};

["Mission2","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";











