//this addAction[""123123"",""ausr.sqf""];
private ["_player","_id","_ob"];
_ob = _this select 0;
_player = _this select 1;
_id = _this select 2;

removeAllWeapons _player;
removeBackpack _player;
//Waffen 

_player addWeapon "ACE_SOC_M4A1_Eotech_4x";
_player selectWeapon "ACE_SOC_M4A1_Eotech_4x";
{_player addMagazine "30Rnd_556x45_Stanag"} forEach [1,2,3,4,5,6,7,8];
{_player addMagazine "SmokeShellRed"} forEach [1];
{_player addMagazine "SmokeShellGreen"} forEach [1];
_player addWeapon "ace_glock18";
{_player addMagazine "ACE_33Rnd_9x19_G18"} forEach [1,2];
{_player addMagazine "HandGrenade_West"} forEach [1,2];


//addbackpack

_player addWeapon "ACE_FAST_PackEDC_ACU";
{[_player, "30Rnd_556x45_Stanag", 4] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "ACE_30Rnd_556x45_T_Stanag", 2] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "SmokeShellRed", 1] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "SmokeShellGreen", 1] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "SmokeShellBlue", 1] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "PipeBomb", 1] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "ACE_33Rnd_9x19_G18", 2] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "HandGrenade_West", 2] call ACE_fnc_PackMagazine;} forEach [1];

//backpack medic
{[_player, "ACE_Medkit", 3] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "ACE_Epinephrine", 4] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "ACE_Morphine", 4] call ACE_fnc_PackMagazine;} forEach [1];
{[_player, "ACE_Bandage", 3] call ACE_fnc_PackMagazine;} forEach [1];

//medic
{_player addMagazine "ACE_Medkit"} forEach [1];
{_player addMagazine "ACE_Epinephrine"} forEach [1,2];
{_player addMagazine "ACE_Morphine"} forEach [1,2];
{_player addMagazine "ACE_Bandage"} forEach [1];

//ausrüstung
{_player addweapon "ACE_GlassesLHD_glasses"} forEach [1];
{_player addweapon "ACE_Earplugs"} forEach [1];
{_player addweapon "ACE_KeyCuffs"} forEach [1];
{_player addweapon "ACE_GlassesBalaklava"} forEach [1];
{_player addweapon "ACE_MX2A"} forEach [1];
{_player addweapon "NVGoggles"} forEach [1];
{_player addweapon "ACE_Earplugs"} forEach [1];

[_player] execFSM "x\ace\addons\sys_goggles\use_earplug.fsm";