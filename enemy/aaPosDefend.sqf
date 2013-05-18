// BIS_TK_INS cfgGroups infantry, group will be selected randomly from this.
//_TK_INS_groups = ["TK_INS_Group", "TK_INS_Patrol", "TK_INS_AATeam", "TK_INS_ATTeam"];

private ["_side","_cside","_type","_markerPos","_grp","_mside","_patrol","_atteam","_group"];
#include "units.sqf"
waituntil {!isnil "bis_fnc_init"};
_markerPos = (_this select 0);


if (custom) then
{
_grp = [_markerPos,_mside, _group,[],[],[],[],[],180] call BIS_fnc_spawnGroup;

}else{  

_grp = [_markerPos,_mside, (configFile >> "CfgGroups" >> _side >> _cside >> _type >> _group)] call BIS_fnc_spawnGroup;
} ;    
[_grp, _markerPos, 100,2, true] call CBA_fnc_taskDefend;
