// BIS_TK_INS cfgGroups infantry, group will be selected randomly from this.
//_TK_INS_groups = ["TK_INS_Group", "TK_INS_Patrol", "TK_INS_AATeam", "TK_INS_ATTeam"];
private ["_wp","_spawnPos","_pos","_grp"];

waituntil {!isnil "bis_fnc_init"};
_spawnPos = getMarkerPos (_this select 0);
_pos = getMarkerPos (_this select 1);

_grp = [_spawnPos, east, (configFile >> "CfgGroups" >> "East" >> "BIS_TK_INS" >> "Infantry" >> "TK_INS_Patrol")] call BIS_fnc_spawnGroup;


_wp = _grp addWaypoint [_pos, 0];
_wp setWaypointType "SAD";
_wp setWaypointCompletionRadius 20;

//Set group properties.
_grp setBehaviour "AWARE";