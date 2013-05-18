

private ["_player","_suicideshooter","_playerarray","_nmax","_select"];
_suicideshooter = _this select 0;
_player = _this select 1;


hint"trigger";
// Auswahl 5% Chance  5> als random
if (90 > random 100) then {

_suicideshooter removeAction 0;
_suicideshooter say3D "suidice_bomber";

_suicideshooter addweapon "Makarov";
{_suicideshooter addMagazine "8Rnd_9x18_Makarov"} forEach [1,2,3];
_suicideshooter selectWeapon "Makarov";

sleep 2;


while {alive _suicideshooter} do 
    
{
_playerarray = nearestObjects [_suicideshooter, [
"US_Army_Soldier_SL",
"US_Soldier_EP1",
"US_Soldier_Medic_EP1",
"US_Soldier_Engineer_EP1",
"US_Delta_Force_TL_EP1",
"US_Delta_Force_Assault_EP1"
], 20];
_nmax = count _playerarray;
_select =floor(random _nmax);
_player = (_playerarray select _select);

//Debug
hint format["INCOMING for you %1!", _player];

while {alive _player} do { _suicideshooter doFire _player;sleep 1;};

};
       

}else
{
hint"Person sicht nicht verdeachtig aus";
}






