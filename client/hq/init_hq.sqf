//Setting up HQ


request_mhq = hq addaction ["Request new M.H.Q.","client\mhq\mhq_respawn.sqf"];
teleport_mhq = hq addAction ["Teleport to M.H.Q.", "client\mhq\mhq_teleport.sqf"];
 hq addAction ["HALO JUMP", "client\hq\halo.sqf"];

if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "HQ Init Complete";
};