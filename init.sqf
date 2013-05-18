
//Mission Start

waitUntil{!(isNil "BIS_fnc_init")};

execVM "dev\init_dev.sqf";

custom = false;

//execVM "scene.sqf";
//["62.75.252.27", "9987", "", "Outpost", ""] call acre_api_fnc_joinServer;


//MHQ
execVM "client\mhq\mhq_check.sqf";


//HQ
execVM "client\hq\init_hq.sqf";

//airdrop
airdrop_on_the_way = false;

//ammobox --- support
//ammobox addAction ["Standart Layout", "client\gear\ausr.sqf"];
//reammo_veh addAction ["Resupply Vehicle", "client\support\reammo_veh.sqf"];
execVM "client\container\init_cargo.sqf";
execVM "client\servive_point\init_spoint.sqf";


call compile preprocessfile "shk_taskmaster.sqf";



//etc
bon_settings_maxallowed_viewdist = 3500;
[] execVM "bon_settings\bon_settings_init.sqf";
//[] execVM "bon_ieds\init.sqf";
execVM "revive\ReviveAceWounds.sqf";
execVM "R3F_ARTY_AND_LOG\init.sqf";
//effects
execVM "init_effects.sqf";

player setVariable ["BIS_noCoreConversations", true];

execVM "init_server.sqf";

execVM "client\clear.sqf";


//disable lea.
enable_lea_addon = false;

//Public
execVM "public\init.sqf";

["Helicopter", "USMC_Soldier_Pilot"] execVM "client\pilot_check.sqf";

//[29,""] call acre_api_fnc_joinChannel;


