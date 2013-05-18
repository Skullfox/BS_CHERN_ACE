

private ["_degreesmhq","_camo"];



if ((speed (vehicle mhq))  < 2) then 
{
[-1, {

   
    Hint"M.H.Q. is Online";
    mhq_online = true;
    publicVariable "mhq_online";
    
    mhq setVehicleInit format["
	mhq_off = mhq addaction ['<t color=""#F00000"">Ready M.H.Q.</t>','client\mhq\mhq_ready.sqf'];
	"]; processInitCommands;
    mhq removeaction mhq_on;
    mhq action ["EJECT", vehicle mhq];
    mhq engineOn false;
    mhq lockDriver true;
    call_airdrop = mhq addAction ["Req Ammobox.", "client\airdrop\ammobox.sqf"];
    }] call CBA_fnc_globalExecute;
    
    //build camo

    _degreesmhq = getDir mhq;
    _camo = createVehicle ["Land_CamoNetB_NATO_EP1", getPos mhq, [], 0, "can_collide"];
   _camo setDir _degreesmhq +180; 
} else 
{
    hint"Stop M.H.Q. to deploy";
}



