

private ["_Object","_StartPos","_Vehicle","_unit","_man"];

_unit = _this select 0;
_man = _this select 1;

_StartPos =  spawn_crate;
_man switchMove "REPAIRINGKNEEL";
titleText ["Packing Laptop","PLAIN DOWN"]; titleFadeOut 4;
sleep 10;
_man switchMove "";
_Object = "Laptop_EP1";
_Vehicle = _Object createVehicle position _StartPos;






