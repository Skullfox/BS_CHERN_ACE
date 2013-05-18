/*
Missionsbeschreibung:

uav abgeschossen

*/

//general setting

private ["_newmarker","_uav"];
if (!isServer) exitWith {};
hint"missions 19";
#include "settings.sqf";


//setting up marker


_newmarker = createMarker ["_mission19",getmarkerpos "m19"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;


//setting up enemies

createVehicle [ _dummyCamoNet , getMarkerPos "m19_1", [], 0, "can_collide"];
_uav = createVehicle [ _dummyUavW , getMarkerPos "m19_1", [], 0, "can_collide"];
_uav lock true;
_uav setdir 180;

createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m19", [], 0, "can_collide"];

["m19_2"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m19_3"] execvm "enemy\taskDefend_TK_INS_Group.sqf";
["m19_4"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m19_5"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";

["m19"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m19"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m19"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

//setting task
sleep 30;
["Mission19",localize "str_uavw", localize "str_m_uavw",true,[]] call SHK_Taskmaster_add;

while {(alive _uav)} do  {sleep 10}; 

["Mission19","succeeded"] call SHK_Taskmaster_upd;
sleep 10;
deleteMarker _newmarker;
execVM "waiting.sqf";    


















