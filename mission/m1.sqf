/*
Missionsbeschreibung:

Suchen und zerstören sie ein Waffenlager der Taliban

*/


//general setting

if (!isServer) exitWith {};
private ["_newmarker","_crate1","_crate2","_crate1n","_crate2n","_static"];
hint"missions 1";
m1_done = false;

#include "settings.sqf";

//setting up marker

_newmarker = createMarker ["_mission1",getmarkerpos "m1"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";

[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m1_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m1_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m1_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m1"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m1_5"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m1"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

_static = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m1_4", [], 0, "can_collide"];
_static setPos [(getPos _static select 0),(getPos _static select 1),0];


//Setting up Weaponscrates

_crate1 = _opforCrate1;
_crate2 = _opforCrate2;

_crate1n = createVehicle [_crate1, getMarkerPos "m1_5", [], 0, "can_collide"];
_crate2n = createVehicle [_crate2, getMarkerPos "m1_6", [], 0, "can_collide"];



//setting task
sleep 30;
["Mission1",localize "str_weaponcache", localize "str_m_weaponcache",true,[]] call SHK_Taskmaster_add;

//setting up trigger
sleep 20;
while {(alive _crate1n) AND (alive _crate2n)} do  {sleep 10}; 

//setting up ending
["Mission1","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;

//select new mission
execVM "waiting.sqf";



