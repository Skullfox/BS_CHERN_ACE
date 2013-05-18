private [];

if (!isServer) exitWith {};
{


    [_x] execvm "enemy\taskPatrol_TK_INS_Patrol.sqf";
    

} forEach ["pat1","pat2","pat3","pat4","pat5","pat6","pat7"];

// Debug
if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "Patrouille Complete";
};