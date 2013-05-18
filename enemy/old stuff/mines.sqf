
 // ["marker"] execvm "mines.sqf";


private ["_marker","_x","_y","_z","_minetype","_mine0"];
_marker = _this select 0;

_minetype = "ACE_MineE_Editor";

_x = [0,5,10] call BIS_fnc_selectRandom;
_y = [0,5,10] call BIS_fnc_selectRandom;
_z = 0;

_mine0 = _minetype createVehicle (getMarkerPos _marker);
_mine1 = _minetype createVehicle (getMarkerPos _marker);
_mine2 = _minetype createVehicle (getMarkerPos _marker);
_mine3 = _minetype createVehicle (getMarkerPos _marker);
_mine4 = _minetype createVehicle (getMarkerPos _marker);
  













