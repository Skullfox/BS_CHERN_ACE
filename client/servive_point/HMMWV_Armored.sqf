
private ["_selectvehicle","_vehicle","_man"];

_man = _this select 1;
_selectvehicle = "HMMWV_Armored";
sleep 2;
_vehicle = _selectvehicle createVehicle (getMarkerPos "spawn_vehicle");
_vehicle setdir -416.126;