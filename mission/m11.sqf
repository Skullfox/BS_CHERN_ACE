/*
Missionsbeschreibung:

Geisel befreieung

*/

//general setting

private ["_newmarker","_static","_hostage","_hq"];
if (!isServer) exitWith {};
hint"missions 11";
m11_done = false;
_hq = hq;

#include "settings.sqf";

KI_PATH = "client\ki\";
//setting up marker


_newmarker = createMarker ["_mission11",getmarkerpos "m11"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys



["m11_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m11_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m11_4"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m11_5"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m11"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m11"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m11"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";

_static = createVehicle ["DSHKM_TK_GUE_EP1", getMarkerPos "m11_5", [], 0, "can_collide"];
_static setPos [(getPos _static select 0),(getPos _static select 1),0];




//Setting up hostage

_hostage = creategroup civilian;
m11_hostage = _hostage createUnit ["Pilot_EP1", getmarkerPos "m11_1", [], 0, "NONE"];
m11_hostage setdir 43;
m11_hostage disableAI "move";
m11_hostage setPos [(getPos m11_hostage select 0),(getPos m11_hostage select 1),0.7];


m11_hostage setVehicleInit format["
this addAction ['<t color=""#F00000"">Folgen</t>','%1follow_me.sqf'];
",KI_PATH]; processInitCommands;


//setting task
sleep 30;
["Mission11",localize "str_radiostation", localize "str_m_radiostation",true,[]] call SHK_Taskmaster_add;
//setting ending


sleep 10;
m11_ende = 0;
while {alive  m11_hostage} do
{if ((_hq distance m11_hostage <=10)) then 
    {
     hint"geisel befreit";
    deleteVehicle m11_hostage;
    m11_ende = 1;
   } 
   else 
   {
    sleep 10;
    }
};


if (m11_ende ==1) then 
{
    ["Mission11","succeeded"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    execVM "waiting.sqf";    
}else
{
    ["Mission11","failed"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    execVM "waiting.sqf";
};


















