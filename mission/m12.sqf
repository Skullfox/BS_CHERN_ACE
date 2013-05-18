/*
Missionsbeschreibung:

Suchen und zerstören sie die Drogenleiferung
*/

//general setting


private ["_newmarker","_crate1","_crate2","_boxes","_crate3","_cratef"];
if (!isServer) exitWith {};
hint"missions 12";
m12_done = false;
CRATE_PATH = "actions\";
//setting up marker

_newmarker = createMarker ["_mission12",getmarkerpos "m12"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";

[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys
["m12_4"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m12_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m12_2"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m12"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m12"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m12"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m12"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//Setting up Weaponscrates

_boxes = ["Land_transport_crates_EP1","Fort_Crate_wood"] call BIS_fnc_selectRandom;
_crate1 = createVehicle [_boxes, getMarkerPos "m12_7", [], 0, "can_collide"];
[_crate1,"1"] execvm "actions\crates.sqf";


_boxes = ["Land_transport_crates_EP1","Fort_Crate_wood"] call BIS_fnc_selectRandom;
_crate2 = createVehicle [_boxes, getMarkerPos "m12_8", [], 0, "can_collide"];
[_crate2,"1"] execvm "actions\crates.sqf";
_crate2 setPos [(getPos _crate2 select 0),(getPos _crate2 select 1),0];


_boxes = ["Land_transport_crates_EP1","Fort_Crate_wood"] call BIS_fnc_selectRandom;
_crate3 = createVehicle [_boxes, getMarkerPos "m12_9", [], 0, "can_collide"];
[_crate3,"1"] execvm "actions\crates.sqf";
_crate3 setPos [(getPos _crate3 select 0),(getPos _crate3 select 1),0];


{
//Setup Fake boxes
_boxes = ["Land_transport_crates_EP1","Fort_Crate_wood"] call BIS_fnc_selectRandom;
_cratef = createVehicle [_boxes, getMarkerPos _x, [], 0, "can_collide"];
[_cratef,"0"] execvm "actions\crates.sqf";
} forEach ["m12_1","m12_2","m12_3","m12_4","m12_5"];


//setting task
sleep 30;
["Mission12",localize "str_drugs", localize "str_m_drugs",true,[]] call SHK_Taskmaster_add;

//setting up trigger
sleep 20;

waitUntil {(!alive _crate1) AND (!alive _crate2) AND (!alive _crate3) };


//setting up ending
["Mission12","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;

//select new mission
execVM "waiting.sqf";




