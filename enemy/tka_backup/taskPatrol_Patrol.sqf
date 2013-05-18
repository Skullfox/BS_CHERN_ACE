
waituntil {!isnil "bis_fnc_init"};
_markerPos = getMarkerPos (_this select 0);

_grp = [_markerPos, east, (configFile >> "CfgGroups" >> "East" >> "BIS_TK_INS" >> "Infantry" >> "TK_INS_Patrol")] call BIS_fnc_spawnGroup;
[_grp, _markerPos, (_this select 1)] call bis_fnc_taskPatrol;