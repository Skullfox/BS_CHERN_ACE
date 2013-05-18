private ["_aU", "_dU"];
_aU = allUnits;

while {true} do {
	sleep 1800;
	if (count _aU != count allUnits) then {
		_dU = _aU - allUnits;
		{hidebody _x} foreach _dU;
	};
	_aU = allUnits;
};