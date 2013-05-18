
    

    
private [];

[-1, {

Hint"M.H.Q. is Offline";
    mhq_online = false;
    publicVariable "mhq_online";
    mhq setVehicleInit format["
	mhq_on = mhq addaction ['<t color=""#F00000"">Deploy M.H.Q.</t>','client\mhq\mhq_deploy.sqf'];
	"]; processInitCommands;
    mhq removeaction mhq_off;
    mhq lockDriver false;
    mhq removeaction call_airdrop;
    

   _camo = nearestObjects [mhq, ["Land_CamoNetB_NATO_EP1"], 15];
    _net = (_camo select 0);
   deleteVehicle _net;
}] call CBA_fnc_globalExecute;
    