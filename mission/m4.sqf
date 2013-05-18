/*
Missionsbeschreibung:

Drogenlager

*/

//general setting
if (!isServer) exitWith {};
private ["_newmarker","_static","_crate1","_crate2","_crate3"];
hint"missions 4";
m4_done = false;
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission4",getmarkerpos "m4"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys

m4_camp= [(getMarkerPos "m4_7"), (180), "Camp2_TKM_EP1"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"));

["m4_6"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m4_7"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m4_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m4_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m4_1"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m4"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m4"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m4"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m4"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

_static = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m4_5", [], 0, "can_collide"];
_static setPos [(getPos _static select 0),(getPos _static select 1),0];

//crates

_crate1 = createVehicle ["Land_transport_crates_EP1", getMarkerPos "m4_8", [], 0, ""];
_crate1 setdir 90;

_crate2 = createVehicle ["Land_transport_crates_EP1", getMarkerPos "m4_9", [], 0, ""];
_crate2 setdir 240;

_crate3 = createVehicle ["Land_transport_crates_EP1", getMarkerPos "m4_10", [], 0, ""];
_crate3 setdir 90;




//setting task
sleep 30;
["Mission4",localize "str_drugs", localize "str_m_drugs",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _crate1) AND (alive _crate2) AND (alive _crate3)} do  {sleep 10}; 

["Mission4","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















