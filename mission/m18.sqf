/*
Missionsbeschreibung:

Geisel befreieung

*/

//general setting

private ["_newmarker","_hostage","_hq"];
if (!isServer) exitWith {};
hint"missions 18";
m18_done = false;
#include "settings.sqf";
_hq = hq;

KI_PATH = "client\ki\";
//setting up marker


_newmarker = createMarker ["_mission18",getmarkerpos "m18"];
_newmarker setMarkerShape "ELLIPSE";
_newmarker setMarkerColor "ColorRed";
_newmarker setMarkerSize [100, 100];
_newmarker setMarkerBrush "cross";
[_newmarker, true] call CBA_fnc_setMarkerPersistent;

//setting up enemys



["m18_2"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";
["m18_3"] execvm "enemy\taskDefend_TK_INS_Patrol.sqf";

["m18_4"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m18_5"] execvm "enemy\taskDefend_TK_INS_ATTeam.sqf";
["m18"] execvm "enemy\taskDefend_TK_INS_Group.sqf";

["m18_6"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m18_6"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
["m18_6"] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";


//Setting up hostage

_hostage = creategroup civilian;
m18_hostage = _hostage createUnit ["Pilot_EP1", getmarkerPos "m18_1", [], 0, "NONE"];
m18_hostage disableAI "move";
m18_hostage setPos [(getPos m18_hostage select 0),(getPos m18_hostage select 1),0.7];


m18_hostage setVehicleInit format["
this addAction ['<t color=""#F00000"">Folgen</t>','%1follow_me.sqf'];
",KI_PATH]; processInitCommands;


//setting task
sleep 30;
["Mission18",localize "str_hostage", localize "str_m_hostage",true,[]] call SHK_Taskmaster_add;
//setting ending


sleep 10;
m18_ende = 0;
while {alive  m18_hostage} do
{if ((_hq distance m18_hostage <=10)) then 
    {
    deleteVehicle m18_hostage;
    m18_ende = 1;
   } 
   else 
   {
    sleep 10;
    }
};


if (m18_ende ==1) then 
{
    ["Mission18","succeeded"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    execVM "waiting.sqf";    
}else
{
    ["Mission18","failed"] call SHK_Taskmaster_upd;
    sleep 10;
    deleteMarker _newmarker;
    execVM "waiting.sqf";
};


















