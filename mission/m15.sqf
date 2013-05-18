/*
Missionsbeschreibung:

feindliches uav

*/

//general setting

private ["_newmarker","_uav"];
if (!isServer) exitWith {};
hint"missions 15";
#include "settings.sqf";

//setting up marker


_newmarker = createMarker ["_mission15",getmarkerpos "m15"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;


//setting up enemies

//createVehicle ["Land_CamoNet_EAST_EP1", getMarkerPos "m15_1", [], 0, "can_collide"];
_uav = createVehicle ["Pchela1T", getMarkerPos "m15_1", [], 0, "can_collide"];
_uav lock true;
_uav setdir 270;

createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m15_2", [], 0, "can_collide"];

["m15_2"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m15_3"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m15_4"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m15_5"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m15"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m15"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m15"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//setting task
sleep 30;
["Mission15",localize "str_uav", localize "str_m_uav",true,[]] call SHK_Taskmaster_add;

while {(alive _uav)} do  {sleep 10}; 

["Mission15","succeeded"] call SHK_Taskmaster_upd;
sleep 10;
deleteMarker _newmarker;
execVM "waiting.sqf";    


















