// BIS_TK_INS cfgGroups infantry, group will be selected randomly from this.
//_TK_INS_groups = ["TK_INS_Group", "TK_INS_Patrol", "TK_INS_AATeam", "TK_INS_ATTeam"];

private ["_side","_cside","_type","_markerPos","_grp","_mside","_patrol","_atteam","_group"];
#include "units.sqf"
waituntil {!isnil "bis_fnc_init"};
_markerPos = getMarkerPos (_this select 0);



if (custom) then
{
_grp = [_markerPos,_mside, _patrol,[],[],[],[],[],180] call BIS_fnc_spawnGroup;

}else{  

_grp = [_markerPos,_mside, (configFile >> "CfgGroups" >> _side >> _cside >> _type >> _patrol)] call BIS_fnc_spawnGroup;
} ;
sleep 1;    
[_grp, _markerPos, (_this select 1)] call BIS_fnc_taskDefend;
