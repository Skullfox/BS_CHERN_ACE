


private ["_car","_carfuel","_cardamage"];

_car = _this select 0;
_car lock true;

_carfuel = [0.2,0.4,0.6] call BIS_fnc_selectRandom;
_car setfuel _carfuel;
_cardamage = [0.2,0.4,0.6] call BIS_fnc_selectRandom;
_car setDamage _cardamage;

        	_car setVehicleInit format["
		this addAction ['<t color=""#F00000"">Untersuchen</t>','silvie\untersuchen.sqf'];
		"]; processInitCommands;

        	_car setVehicleInit format["
		this addAction ['<t color=""#F00000"">Aufbrechen</t>','silvie\aufbrechen.sqf'];
		"]; processInitCommands;


