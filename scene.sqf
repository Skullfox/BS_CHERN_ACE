

enableRadio false;
showCinemaBorder true;


playMusic "load_us_music";
if (daytime > 19.75 || daytime < 4.15) then {camUseNVG true};


"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 7;
titleCut ["", "BLACK IN", 5];

_camstart = camstart;
_camera = "camera" camCreate [getPosASL _camstart select 0, (getPosASL _camstart select 1) + 1, 30];
_camera camSetTarget [getPosASL player select 0, getPosASL player select 1 , 1.5];
_camera camSetFov 0.7;
_camera cameraEffect ["INTERNAL", "Back"];
_camera camCommit 1;

waitUntil {camCommitted _camera};

[str ("Burning Sky") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Chernarus")] spawn BIS_fnc_infoText;


_start_pos = 5;

_camera camSetTarget player;
_camera camSetPos [getPosASL player select 0, getPosASL player select 1, 2];
_camera camCommit 20;

[] spawn {
	private ["_control", "_posdom", "_control2", "_pos", "_oldy"];
	disableSerialization;
	sleep 3;
	_posdom = ctrlPosition _control;
	_control ctrlSetPosition [(_posdom select 0) - 0.08, _posdom select 1];
	_control ctrlCommit 0.3;
	waitUntil {ctrlCommitted _control};
	_pos = ctrlPosition _control2;
	_control2 ctrlSetPosition [0.69, _pos select 1];
	_control2 ctrlCommit 0.5;
	waitUntil {ctrlCommitted _control2};
	sleep 0.1;
};

sleep 8;
waitUntil {camCommitted _camera};
player cameraEffect ["terminate","back"];
camDestroy _camera;
titleText ["Framework created by [DEVGRU] Phil", "Plain Down"]; titleFadeOut 6;



enableRadio true;
"dynamicBlur" ppEffectEnable false;

sleep 8;



