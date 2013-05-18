

private ["_player","_suicidebomber","_playerarray","_nmax","_select"];
_civ = _this select 0;

hint"suicide on";
if (100 > random 100) then {
_suicidebomber = _civ;

waitUntil {_suicidebomber distance player  <= 20};
//Player Classes Change
_playerarray = nearestObjects [_suicidebomber, [
"US_Army_Soldier_SL",
"US_Soldier_EP1",
"US_Soldier_Medic_EP1",
"US_Soldier_Engineer_EP1",
"US_Delta_Force_TL_EP1",
"US_Delta_Force_Assault_EP1"
], 25];

_nmax = count _playerarray;
_select =floor(random _nmax);
_player = (_playerarray select _select);

//Sound
_suicidebomber say3D "suidice_bomber";

//Debug
hint format["INCOMING for you %1!", _player];

_suicidebomber SetSpeedMode "Full";
//_suicidebomber SetCombatMode "Red";
_suicidebomber SetBehaviour "Careless";
//_suicidebomber disableAI "move";
_suicidebomber domove getpos _player;

waitUntil {_suicidebomber distance _player  <= 4};

if ((alive _suicidebomber) AND (_suicidebomber distance _player  <= 5)) then {
hint"test";
"Sh_85_HE" createVehicle getPos _suicidebomber;


}else
{
//Code if failed
};

}else{
    
 //Code if no bomber
   
};