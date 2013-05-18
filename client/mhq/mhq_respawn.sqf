


private ["_title","_text"];



if ((!alive mhq)) then 
{
_title  = "<t color='#FF0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>MHQ is Offline</t><br/><br/>";
_text   = "M.H.Q Requested,please wait";
hint parseText (_title + _text);
sleep 15;

 deleteVehicle mhq;   
//if (isServer) then {
sleep 5;    
mhq = "ACE_M113A3" createVehicle (getMarkerPos "mhq_respawn");
mhq setdir 19.0409;
//};

execVM "client\mhq\mhq_check.sqf";
//execVM "client\mhq\mhq_marker.sqf";
_title  = "<t color='#00FF00' size='1.2' shadow='1' shadowColor='#000000' align='center'>MHQ is Online</t><br/><br/>";
_text   = "Destroy the MHQ to request a new one";
hint parseText (_title + _text);    
    

} else 
{
_title  = "<t color='#00FF00' size='1.2' shadow='1' shadowColor='#000000' align='center'>MHQ is Online</t><br/><br/>";
_text   = "Destroy the MHQ to request a new one";
hint parseText (_title + _text);
}