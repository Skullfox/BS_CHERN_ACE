/*
Missionsbeschreibung:

Bombenattentat
*/

//general setting


private ["_newmarker","_crate1","_crate2","_boxes","_crate3"];
if (!isServer) exitWith {};
hint"missions 16";
m16_done = false;
CRATE_PATH = "actions\";
#include "settings.sqf";

//setting up marker

_newmarker = createMarker ["_mission16",getmarkerpos "m16"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [250, 250];
_newmarker setMarkerBrush "cross";

[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys

["m16_4"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m16_5"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m16_6"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m16"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m16_1"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m16_2"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m16_3"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m16"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m16"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m16"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//Setting up crates

_boxes = _dummyCrateNoInter;

_crate1 = createVehicle [_boxes, getMarkerPos "m16_1", [], 0, "can_collide"];
_crate1 setPos [(getPos _crate1 select 0),(getPos _crate1 select 1),0];


_crate2 = createVehicle [_boxes, getMarkerPos "m16_2", [], 0, "can_collide"];
_crate2 setPos [(getPos _crate2 select 0),(getPos _crate2 select 1),0.20];


_crate3 = createVehicle [_boxes, getMarkerPos "m16_3", [], 0, "can_collide"];
_crate3 setPos [(getPos _crate3 select 0),(getPos _crate3 select 1),0];

_crate1 setVehicleInit format["
this addAction ['<t color=""#F00000"">Entschärfen</t>','%1crate_bombs.sqf'];
",CRATE_PATH]; processInitCommands;

_crate2 setVehicleInit format["
this addAction ['<t color=""#F00000"">Entschärfen</t>','%1crate_bombs.sqf'];
",CRATE_PATH]; processInitCommands;

_crate3 setVehicleInit format["
this addAction ['<t color=""#F00000"">Entschärfen</t>','%1crate_bombs.sqf'];
",CRATE_PATH]; processInitCommands;



//setting task
sleep 30;
["Mission16",localize "str_bomb_attack", localize "str_m_bomb_attack",true,[]] call SHK_Taskmaster_add;

//setting up trigger
sleep 20;

waitUntil {(!alive _crate1) AND (!alive _crate2) AND (!alive _crate3)};


//setting up ending
["Mission16","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;

//select new mission
execVM "waiting.sqf";




