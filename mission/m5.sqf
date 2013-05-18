/*
Missionsbeschreibung:

Feidliche Mörserstellung

*/

//general setting

private ["_newmarker","_moerser1","_moerser2","_moerser3"];
if (!isServer) exitWith {};
hint"missions 5";
#include "settings.sqf";
//setting up marker


_newmarker = createMarker ["_mission5",getmarkerpos "m5"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys


["m5_1"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m5_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m5_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m5"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m5"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m5"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m5"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";


//mörser

_moerser1 = createVehicle ["2b14_82mm_TK_INS_EP1", getMarkerPos "m5_4", [], 0, ""];

_moerser2 = createVehicle ["2b14_82mm_TK_INS_EP1", getMarkerPos "m5_5", [], 0, ""];

_moerser3 = createVehicle ["2b14_82mm_TK_INS_EP1", getMarkerPos "m5_6", [], 0, ""];



//setting task
sleep 30;
["Mission5",localize "str_arty_1", localize "str_m_arty_1",true,[]] call SHK_Taskmaster_add;
//setting up ending
sleep 10;

while {(alive _moerser1) AND (alive _moerser2) AND (alive _moerser3)} do  {sleep 10}; 

["Mission5","succeeded"] call SHK_Taskmaster_upd;
deleteMarker _newmarker;
execVM "waiting.sqf";
















