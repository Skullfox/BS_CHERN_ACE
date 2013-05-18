/*
Missionsbeschreibung:

Stadt einnehmen

*/

//general setting

private ["_newmarker","_static","_static1","_trigger"];
if (!isServer) exitWith {};
hint"missions 10";
m10_done = false;

#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission10",getmarkerpos "m10"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m10"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m10_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m10_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m10_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m10_4"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m10_8"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m10_8"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m10_8"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";


_static = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m10_5", [], 0, "can_collide"];
_static setPos [(getPos _static select 0),(getPos _static select 1),0];

_static1 = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m10_6", [], 0, "can_collide"];
_static1 setPos [(getPos _static1 select 0),(getPos _static1 select 1),0];

m10_camp = [(getMarkerPos "m10_7"), (0), _eCamp] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"));

//setting task
sleep 30;
["Mission10",localize "str_enemyvillage", localize "str_m_enemyvillage",true,[]] call SHK_Taskmaster_add;
//setting up trigger
sleep 20;

_trigger = createTrigger ["EmptyDetector", getmarkerpos "m10"];
_trigger setTriggerArea [150, 150, 0, true];
_trigger setTriggerActivation ["east", "NOT PRESENT", true];
_trigger setTriggerStatements ["this","m10_done = true", ""];


waitUntil {m10_done};
publicVariable "m10_done";
sleep 10;
["Mission10","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
deleteVehicle _trigger;
execVM "waiting.sqf";














