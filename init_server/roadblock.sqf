private ["_barrel","_blockade0","_barrel1","_barrel2"];



if (!isServer) exitWith {};
ACTIONS_PATH = "actions\";

#include "roadblock_liste.sqf";

{
    
null = ["roadblock_1", 0, getMarkerPos _x] execVM "objectMapper.sqf";

    [_x] execvm "enemy\taskDefend_TK_INS_Group.sqf";

} forEach _roadblock_list;

// Debug
if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "Blockades Complete";

};