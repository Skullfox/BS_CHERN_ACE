
private ["_selectvehicle","_vehicle","_man"];

_man = _this select 1;
_selectvehicle = "MH60S";


_pilot = "USMC_Soldier_Pilot";
_playertype = typeOf _man;

if (_playertype == _pilot) then {
_vehicle = _selectvehicle createVehicle (getMarkerPos "spawn_heli");
_vehicle setdir -67.0925;
}else{
hint "You are not a Pilot";
}
