/*
Missionsbeschreibung:

Säubern sie die stadt

*/

//general setting
if (!isServer) exitWith {};
private ["_newmarker","_trigger","_static"];
hint"missions 3";
m3_done = false;
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission3",getmarkerpos "m3"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [250, 250];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
createVehicle ["KORD_UN_EP1", getMarkerPos "m3_5", [], 0, "can_collide"];
["m3_6"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m3_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m3_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m3_1"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m3"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m3"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m3"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m3"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

_static = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m3_4", [], 0, "can_collide"];
_static setPos [(getPos _static select 0),(getPos _static select 1),0];

m3_camp= [(getMarkerPos "m3_7"), (0), "MediumTentCamp2_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"));


//setting task
sleep 30;
["Mission3",localize "str_enemyvillage", localize "str_m_enemyvillage",true,[]] call SHK_Taskmaster_add;
//setting up trigger
sleep 20;

_trigger = createTrigger ["EmptyDetector", getmarkerpos "m3"];
_trigger setTriggerArea [250, 250, 0, true];
_trigger setTriggerActivation ["east", "NOT PRESENT", true];
_trigger setTriggerStatements ["this","m3_done = true", ""];





waitUntil {m3_done};
publicVariable "m3_done";
sleep 10;
["Mission3","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
deleteVehicle _trigger;
execVM "waiting.sqf";
    












