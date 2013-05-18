// BIS_TK_INS cfgGroups infantry, group will be selected randomly from this.
//_TK_INS_groups = ["TK_INS_Group", "TK_INS_Patrol", "TK_INS_AATeam", "TK_INS_ATTeam"];

waituntil {!isnil "bis_fnc_init"};
_markerPos = getMarkerPos (_this select 0);


_grp = [_markerPos, east, (configFile >> "CfgGroups" >> "East" >> "BIS_TK_INS" >> "Infantry" >> "TK_INS_AATeam")] call BIS_fnc_spawnGroup;
[_grp, _markerPos, 75] call bis_fnc_taskPatrol;