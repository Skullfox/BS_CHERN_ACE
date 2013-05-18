

private ["_vehicle","_selectvehicle","_title","_text"];
_selectvehicle = nearestObjects [reammo_point, ["HMMWV_M998A2_SOV_DES_EP1","HMMWV_M1151_M2_DES_EP1","ACE_Stryker_ICV_M2_SLAT_D"], 5];
_vehicle = (_selectvehicle select 0);


if (_vehicle distance reammo_point  <= 5) then {
    
_title  = "<t color='#00FF00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Resupply Vehicle</t><br/><br/>";
_text   = "Please wait";
hint parseText (_title + _text);
    
[-2, {
sleep 5;    
_vehicle addweaponCargo ["ACE_KeyCuffs", 5];
_load   = "<br/> 25%";
hint parseText (_title + _text + _load);    
sleep 8;   
_vehicle addmagazineCargo ["IR_Strobe_Target", 2];
_load   = "<br/> 43%";
hint parseText (_title + _text + _load);    
    sleep 5;   
_vehicle addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",15];
_load   = "<br/> 64%";
hint parseText (_title + _text + _load);    
    sleep 7;   
_vehicle addMagazineCargo ["SmokeShellBlue", 4];
_load   = "<br/> 81%";
hint parseText (_title + _text + _load);    
    sleep 5;   
_vehicle addMagazineCargo ["PipeBomb", 2];
_load   = "<br/> 90%";
hint parseText (_title + _text + _load);   
    sleep 5;   
    _vehicle addweaponCargo ["RH_m16a4", 2];
_load   = "<br/> 95%";
hint parseText (_title + _text + _load);   
sleep 5;   
_vehicle addMagazineCargo ["ACE_Medkit",12];
_vehicle addMagazineCargo ["ACE_Epinephrine", 12];
_vehicle addMagazineCargo ["ACE_Morphine", 12];
_vehicle addMagazineCargo ["ACE_Tourniquet", 7];
_vehicle addMagazineCargo ["ACE_LargeBandage", 8];
_vehicle addMagazineCargo ["ACE_Bandage", 6];
_vehicle addMagazineCargo ["ACE_Bodybag", 3];
_load   = "<br/> Done";
hint parseText (_title + _text + _load);    


}] call CBA_fnc_globalExecute;

};

