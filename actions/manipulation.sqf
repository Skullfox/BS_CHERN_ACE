
private ["_obj","_man","_eng","_playertype"];
_obj = _this select 0;
_man = _this select 1;
_eng = "US_Soldier_Engineer_EP1";
_playertype = typeOf _man;

if ((_playertype == _eng) && (_man distance _obj  <= 5)) then {
titleText ["Objekt wird abgebaut","PLAIN DOWN"]; titleFadeOut 4;
[-1, {
_man switchMove "REPAIRINGKNEEL";
}] call CBA_fnc_globalExecute;
    
sleep 30;
deleteVehicle _obj;
[-1, {
_man switchMove "";
}] call CBA_fnc_globalExecute;
}else {
    
Hint"Du bist kein Pionier oder du bist zu weit weg";

};




