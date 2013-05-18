/*
Missionsbeschreibung:

metis stellung

*/

//general setting

private ["_newmarker","_static"];
if (!isServer) exitWith {};
hint"missions 17";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission17",getmarkerpos "m17"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;


//setting up enemys

["m17"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m17_2"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m17_3"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m17"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m17"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

["m17"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m17"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m17"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

_static = createVehicle [_eDummyAT, getMarkerPos "m17_1", [], 0, "can_collide"];
_static setdir 140.828;

m17_camp= [(getMarkerPos "m17"), (0), "SmallTentCamp2_GUE_EP1"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"));


//setting task
sleep 30;
["Mission17",localize "str_at_camp", localize "str_m_at_camp",true,[]] call SHK_Taskmaster_add;



waitUntil {!alive _static};
sleep 10;
["Mission17","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
    












