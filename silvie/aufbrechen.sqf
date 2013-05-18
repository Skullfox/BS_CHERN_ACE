

private ["_object","_player"];
_object = _this select 0;
_player = _this select 1;


_object removeAction 1;
_object removeAction 0;


if (locked _object) then 

{
hint"Auto wird aufgebrochen";
_player switchMove "REPAIRINGKNEEL";
sleep 10;
_player switchMove "";


        _object setVehicleInit format["
		this lock false;
		"]; processInitCommands;
    
}

else 
{
hint"Auto ist offen";
}



