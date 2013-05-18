
private ["_player","_dropbox","_dropPosition","_dropPosX","_dropPosY","_dropPosZ","_spawn","_airxGroup","_airx","_pilot","_coords","_x","_y"];
_player = _this select 1;
_dropbox = "USSpecialWeaponsBox";
//Check of available

if (airdrop_on_the_way) exitWith {hint"Airdrop is not available at the moment ,please wait"};


_dropPosition = getpos mhq;


airdrop_on_the_way = true;
publicVariable "airdrop_on_the_way";   


//hint format ["Droppoint: %1,",position _player];

_coords = getpos _player;
_x = _coords select 0 ;
_y = _coords select 1 ;
hint format["X. %1 \n Y. %2", _x /10000 ,_y /10000 ];


sleep 0.5;
_dropPosX = _dropPosition select 0;
_dropPosY = _dropPosition select 1;
_dropPosZ = _dropPosition select 2;
sleep 0.1;


_spawn = [_dropPosX, _dropPosY -4000, _dropPosZ + 4000];
_airxGroup = creategroup west;

if (!isServer)  then{
_airx = createVehicle ["C130J_US_EP1", _spawn, [], 0, "FLY"];
_pilot = _airxGroup createUnit ["USMC_Soldier_Pilot", _spawn, [], 0, "NONE"];
};   
_pilot assignAsDriver _airx;
_pilot moveindriver _airx;
_airx FlyInHeight 200;
group _pilot move getpos mhq;

Waituntil {((_airx distance mhq) < 300)};
sleep 1;
[_airx, _dropbox] call BIS_fnc_supplydrop;
sleep 30;
{deleteVehicle _airx} forEach crew _airx + [_airx];
airdrop_on_the_way = false;
publicVariable "airdrop_on_the_way"; 





