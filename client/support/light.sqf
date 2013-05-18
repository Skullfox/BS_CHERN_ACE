//null=[this] execVM "client\support\light.sqf";

_obj = _this select 0;
_obj allowDamage false;
_light = "#lightpoint" createVehicle getPos _obj; getDir _obj;
_light setpos [getPos _obj select 0, getPos _obj select 1, getPos _obj select 2];
_light setLightColor [1, 1, 1];
_light setLightAmbient [2, 2, 2];
_light setLightBrightness 0.01;
_light setDir getdir _obj;
_light allowDamage false;