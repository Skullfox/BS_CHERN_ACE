waitUntil{!isNil "bis_fnc_init"};
[["CityCenter"],[],true] call BIS_fnc_locations;

_strategic = ["Strategic","StrongpointArea","FlatArea","FlatAreaCity","FlatAreaCitySmall","CityCenter","Airport"];

_military = ["HQ","FOB","Heliport","Artillery","AntiAir","City","Strongpoint","Depot","Storage","PlayerTrail","WarfareStart"];

_names = ["NameMarine","NameCityCapital","NameCity","NameVillage","NameLocal","fakeTown"];

_hills = ["Hill","ViewPoint","RockArea","BorderCrossing","VegetationBroadleaf","VegetationFir","VegetationPalm","VegetationVineyard"];

fnc_displayLocs =
{
	_locs = [];
	_dist = 20000;
	{
		_locs = nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), _x , _dist];
	} forEach [_this select 0];

	private["_t","_m"];
	{
		_t = format["l%1",floor(random 10000)];
		_m = createMarker [_t, position _x];
		_m setMarkerType "Dot";
		_m setMarkerText type _x;
		_m setMarkerColor (_this select 1);
	} forEach _locs;
};



[_strategic, "ColorBlue"] call fnc_displayLocs;
[_military, "ColorRed"] call fnc_displayLocs;
[_names, "ColorGreen"] call fnc_displayLocs;
[_hills, "ColorOrange"] call fnc_displayLocs;



