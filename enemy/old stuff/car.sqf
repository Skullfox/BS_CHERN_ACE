waituntil {!isnil "bis_fnc_init"};

if isserver then 
{
sleep 30;

private ["_enemyArmPool","_ArmNumberSpawn","_ArmType","_spawnedArmUnit","_patrolmark","_spawnmark","_ArmUnit","_b","_armored"];


_patrolmark = _this select 0;
_spawnmark = _this select 1;
_armored = _this select 2;

_b = 0;

while {_b != _armored} do {

_enemyArmPool = ["LandRover_MG_TK_INS_EP1","Offroad_DSHKM_TK_GUE_EP1"] call BIS_fnc_selectRandom;
_spawnedArmUnit = [getMarkerPos _spawnmark, 180, _enemyArmPool, EAST] call bis_fnc_spawnvehicle;
_ArmUnit = _spawnedArmUnit select 0;
_ArmUnit setCombatMode "RED";
_ArmUnit setskill 1;
{_x setVehicleInit "nul = [this, _patrolmark] execVM 'ups.sqf';"} forEach units _ArmUnit;
processInitCommands;
sleep 60;
_b = _b+1;

};
};