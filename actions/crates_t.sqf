
private ["_crate","_man"];
_crate = _this select 0;
_man = _this select 1;



if(_man distance _crate  <= 2) then {
[-2, {
_man switchMove "REPAIRINGKNEEL";
}] call CBA_fnc_globalExecute;
sleep 20;
[-2, {
_man switchMove "";
}] call CBA_fnc_globalExecute;
hint"In den Kisten befindet ein dopppelter Boden wo Drogen versteckt sind";
[-2, {
_crate removeAction 0;
}] call CBA_fnc_globalExecute;

}
else
{
hint"Ich bin zu weit weg um die Kiste zu untersuchen";
};
