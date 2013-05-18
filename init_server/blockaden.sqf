private ["_barrel","_blockade0","_barrel1","_barrel2"];



if (!isServer) exitWith {};
ACTIONS_PATH = "actions\";

#include "blockaden_liste.sqf";

{
    
    _blockade0 = "Fort_Barricade" createVehicle (getMarkerPos _x);
    _barrel = ["Hedgehog","Barrels"] call BIS_fnc_selectRandom;
    _barrel1 = _barrel createVehicle (_blockade0 modelToWorld [+5.0,-5.0,0.0]);
    _barrel = ["Hedgehog","Barrels"] call BIS_fnc_selectRandom;
    _barrel2 = _barrel createVehicle (_blockade0 modelToWorld [-5.0,0.0,0.0]);


    
    
            	_blockade0 setVehicleInit format["
		this addAction ['<t color=""#F00000"">Abbauen</t>','%1schwer.sqf'];
		",ACTIONS_PATH]; processInitCommands;
    

    
        	_barrel1 setVehicleInit format["
		this addAction ['<t color=""#F00000"">Abbauen</t>','%1leicht.sqf'];
		",ACTIONS_PATH]; processInitCommands;
    


    		_barrel2 setVehicleInit format["
		this addAction ['<t color=""#F00000"">Abbau</t>','%1leicht.sqf'];
		",ACTIONS_PATH]; processInitCommands;


    [_x] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
} forEach _blockaden_list;

// Debug
if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "Blockades Complete";

};