
if (!isServer) exitWith {};

_AAlocations = nearestLocations [position Server, ["FlatArea"], 50000];
_possibleLocation = [];
_blacklist  = [];


    //Ausortieren falls zu nahe an der base

{
    
        if (position _x distance getmarkerpos "base" < 2300 ) then 
    
	    {
		 //   _newmarker = createMarker [str(position _x),position _x];
			//_newmarker setMarkerShape "ICON";
		//	_newmarker setMarkerText str(_number);
			//_newmarker setMarkerColor "ColorRed";
		//	_newmarker setMarkerType "mil_objective";
            
            //zu nahe an der base
            _blacklist  = _blacklist + [_x];
            
            //aus schleife entfernen
            _AAlocations = _AAlocations - [_x];

         
            
	    }else{
            		
	//_newmarker = createMarker [str(position _x),position _x];
	//_newmarker setMarkerShape "ICON";
	//_newmarker setMarkerText str(_number);
	//_newmarker setMarkerColor "ColorYellow";
	//_newmarker setMarkerType "mil_objective";
            
            //Mögliche positionen
            _possibleLocation = _possibleLocation + [_x];
            //aus schleife entfernen
   			_AAlocations = _AAlocations - [_x];    
        }
    
}foreach _AAlocations;

player sideChat format["Blacklist %1",count _blacklist];
player sideChat format["Locatiosn found %1",count _possibleLocation];

//Positionen 


_minNumber = 0;
_maxAAPos = 15;

While {_minNumber < _maxAAPos} do 

{
    _minNumber = _minNumber + 1;
player sideChat format["MinNumber %1",_minNumber];
    
	_locNumbers = count _possibleLocation;
	_randPos = floor(random _locNumbers);
	_spawnPos = (_possibleLocation select _randPos);

	_pos = position _spawnPos;
player sideChat format["Spawnpos %1", position _spawnPos];
  
    
// _newmarker = createMarker [str(_pos),_pos];
//_newmarker setMarkerShape "ELLIPSE";
//_newmarker setMarkerColor "ColorRed";
//_newmarker setMarkerSize [400, 400];
//_newmarker setMarkerBrush "cross";

 ["aa_placement_1", random 360,_pos] execVM "objectMapper.sqf";
 sleep 1;
 [_pos] execvm "enemy\aaPosDefend.sqf";
                    
	_possibleLocation = _possibleLocation - [_spawnPos];
	sleep 1;
};



// Debug
if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "AA placements Complete";

};