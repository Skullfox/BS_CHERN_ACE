
private ["_crate","_man"];
_crate = _this select 0;
_man = _this select 1;



if(_man distance _crate  <= 2) then {

_man switchMove "REPAIRINGKNEEL";

sleep 20;

_man switchMove "";

hint"Bombe entschärft";

_crate removeAction 0;
deleteVehicle _crate
}
else
{
hint"Ich bin zu weit weg um die Kiste zu untersuchen";
};
