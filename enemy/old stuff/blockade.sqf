
 // ["marker"] execvm "blockade.sqf";




private ["_marker","_blockade","_barrel","_blockade0","_barrel1","_barrel2"];
_marker = _this select 0;

_radius = 100;

_enemy = ["0","1"] call BIS_fnc_selectRandom;

_blockade = "Fort_Barricade";
_barrel = "Barrels";

_blockade0 = _blockade createVehicle (getMarkerPos _marker);
_barrel1 = _barrel createVehicle (_blockade0 modelToWorld [+5.0,-5.0,0.0]);
_barrel2 = _barrel createVehicle (_blockade0 modelToWorld [-5.0,0.0,0.0]);

_blockade0 addAction["Abbauen", "actions\schwer.sqf"];
_barrel1 addAction["Abbauen", "actions\leicht.sqf"];
_barrel2 addAction["Abbauen", "actions\leicht.sqf"];


switch (_enemy) do
 {
     case "0":
     {
     };

     case "1":
     {
	[_marker,_radius] execvm "routes\enemy\taskDefend_TK_INS_Patrol.sqf";
     };  
  
};

