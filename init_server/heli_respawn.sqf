
private ["_vehicle_types","_max_dist_between_waypoints","_grp","_vec_type","_markerspawn","_markerpat","_heli","_newheli"];

_markerspawn = _this select 0;
_markerpat = _this select 1;
sleep 15;
_heli = nearestObjects ["center", ["UH1H_TK_EP1"], 6000];
_newheli = (_heli select 0);



if (!alive _newheli) then
{
    
_vehicle_types = ["UH1H_TK_EP1"];
_max_dist_between_waypoints = 500;

_grp = createGroup east;
_vec_type = floor (random count _vehicle_types);


 [getMarkerPos _markerspawn, random 360, _vehicle_types select random _vec_type, _grp] call BIS_fnc_spawnVehicle;


[_grp, (getmarkerpos _markerpat), _max_dist_between_waypoints] call BIS_fnc_taskPatrol; 
sleep 10;
}else
{
hint" no heli needed";
["helispawn","helipatrol"] execVM "init_server\heli_respawn.sqf";
};








