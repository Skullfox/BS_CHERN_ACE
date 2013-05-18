


private ["_civ"];

_civ = _this select 0;

_civ setVehicleInit format["
this addAction ['<t color=""#F00000"">Untersuchen</t>','alice\untersuchen.sqf','(_civ distance _this) < 1'];
"]; processInitCommands;

//[_civ] execVM "alice\suicide_bomber.sqf";






