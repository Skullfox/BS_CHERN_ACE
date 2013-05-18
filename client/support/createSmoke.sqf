//////////////
 // Function file for Armed Assault
 // Created by: kylania
//////////////
 //
 // nul = [someObject] execVM "createSmoke.sqf";
 //
 // nul = ["someMarkerName", [1,0,0]] execVM "createSmoke.sqf";
//////////////

private ["_loc","_color","_smoker"];

_loc = _this select 0; // Can be an object or a string (marker name) or a position array.
 _color = if (count _this > 1) then {_this select 1} else {[0.1,0.1,0.1]}; // default smoke color is dark grey

// Grab the type of location, either a string (therefore a marker) or an object (therefore, well, an object)
 switch (toUpper(typeName _loc)) do {
 case "STRING": {_smoker = getMarkerPos _loc};
 case "OBJECT": {_smoker = getPos _loc};
 case "ARRAY": {_smoker = _loc};
 default {_smoker = getPos player}; // hopefully shouldn't get here, but just in case!
 };

// Spawn the smoke at the location.
 [_smoker, _color] spawn {
 _sh=_this select 0;
 _col=_this select 1;
 _c1=_col select 0;
 _c2=_col select 1;
 _c3=_col select 2;

 sleep (3+random 1);

 _source = "#particlesource" createVehicleLocal _sh;
 _source setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0], [0.2, 0.1, 0.1], 0, 1.277, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 0.2], [_c1, _c2, _c3, 0.05], [_c1, _c2, _c3, 0]], [1.5,0.5], 1, 0.04, "", "", _sh];
 _source setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
 _source setDropInterval 0.03;
 _source2 = "#particlesource" createVehicleLocal _sh;
 _source2 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 0], "", "Billboard", 1, 20, [0, 0, 0], [0.2, 0.1, 0.1], 0, 1.277, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 1], [_c1, _c2, _c3, 0.5], [_c1, _c2, _c3, 0]], [0.2], 1, 0.04, "", "", _sh];
 _source2 setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.2], 0, 0, 360];
 _source2 setDropInterval 0.03;
 };