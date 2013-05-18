// BIS_TK_INS cfgGroups infantry, group will be selected randomly from this.
//_TK_INS_groups = ["TK_INS_Group", "TK_INS_Patrol", "TK_INS_AATeam", "TK_INS_ATTeam"];

private ["_wp","_pos","_grp","_side","_cside","_type","_mside","_patrol","_atteam","_group","_markerPos"];
#include "units.sqf"
waituntil {!isnil "bis_fnc_init"};



_markerPos = getMarkerPos (_this select 0);
_pos = getMarkerPos (_this select 1);




if (custom) then
{
_grp = [_markerPos,_mside, _patrol,[],[],[],[],[],180] call BIS_fnc_spawnGroup;

}else{  

_grp = [_markerPos,_mside, (configFile >> "CfgGroups" >> _side >> _cside >> _type >> _patrol)] call BIS_fnc_spawnGroup;
} ;
sleep 1;    

_wp = _grp addWaypoint [_pos, 0];
_wp setWaypointType "SAD";
_wp setWaypointCompletionRadius 20;

//Set group properties.
_grp setBehaviour "AWARE";