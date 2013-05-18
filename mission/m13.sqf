/*
Missionsbeschreibung:

hilfslieferung

*/

//general setting

private ["_newmarker","_transporter","_newmarker1"];
if (!isServer) exitWith {};
hint"missions 13";
m13_done = false;

#include "settings.sqf";
_transporter = _supplyTruck;



KI_PATH = "client\ki\";
//setting up marker


_newmarker = createMarker ["_mission13",getmarkerpos "m13"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;


//setting up vehicle

m13_uno = _transporter createVehicle (getMarkerPos "base");
m13_uno setDir 270;




//setting task
sleep 30;
["Mission13",localize "str_supplies", localize "str_m_supplies",true,[]] call SHK_Taskmaster_add;


_newmarker1 = createMarker ["_mission131",getmarkerpos "m13_1"];
_newmarker1 setMarkerShape "ICON";
_newmarker1 setMarkerColor "ColorYellow";
_newmarker1 setMarkerType "mil_objective";
[_newmarker1, true] call CBA_fnc_setMarkerPersistent;


sleep 10;
m13_ende = 0;
sleep 1;
while {alive  m13_uno} do {if ((m13_pos distance m13_uno <=20)) then 
	{
	if(alive m13_uno) then
		{
        sleep 10;
		//m13_uno action ["EJECT", vehicle m13_uno];
		m13_uno engineOn false;
		//m13_uno lockDriver true;
		hint Localize "str_h_supplies";
		sleep 10;
		["m13_2","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf";  
		["m13_2","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf";  
   		sleep 1;
		["m13_3","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf";  
		["m13_3","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf"; 
		sleep 1;
		["m13_4","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf";  
		sleep 1;
		["m13_5","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf";
		["m13_5","m13"] execvm "enemy\taskattack_TK_INS_Patrol.sqf"; 
		sleep 300;
		deleteVehicle m13_uno;
		m13_ende = 1;
			}else{};   
		}else
   
   {
    sleep 1;
    }
};

    

if (m13_ende ==1) then 
{
    ["Mission13","succeeded"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    deleteMarker _newmarker1;
    execVM "waiting.sqf";    
}else
{
    ["Mission13","failed"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    deleteMarker _newmarker1;
    execVM "waiting.sqf";
};


















