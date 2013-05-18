//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Odin
//////////////////////////////////////////////////////////////////

Private ["_unit","_Dropzone","_pos","_heliman","_G1","_chopper","_cam","_wp"];
titleText ["Choose your Dropzone on the map!", "PLAIN"];

paraman = "logic" createvehicle getpos para;

onMapSingleClick "paraman setpos _pos; go = 0";
waitUntil {go == 0;};
go = 1;

_unit = _this select 1;
_Dropzone = paraman;
_pos = (getPos _Dropzone);

if (not(_unit hasWeapon "ACE_ParachutePack")) then { titleText ["Pack a chute first!", "PLAIN"];} else
{
_heliman = createGroup (west);
_G1 = _heliman createUnit ["SoldierWPilot", para, [], 0, "form"];
_chopper = createVehicle ["ACE_UH60MG_M240C", _Dropzone, [], 500, "FLY"];
_G1 assignAsDriver _chopper;
_G1 moveInDriver _chopper;

[_chopper,_unit] execVM “x\ace\addons\sys_eject\jumpout_cord.sqf”;
_chopper setPosASL [ (getPosASL _Dropzone select 0), (getPosASL _Dropzone select 1), (getPosASL _Dropzone select 2) + 500];		
_unit assignAsCargo _chopper;
[_unit] orderGetIn true;
_unit moveincargo _chopper;
if (alive _chopper) then
{
_cam = "camera" camcreate getpos _chopper;
_cam cameraeffect ["internal", "back"];
//align to the object
_cam camsettarget vehicle _chopper;
// Camera position
_cam camSetRelPos [0,-100,0];
//Duration of the sequence
_cam camCommitPrepared 5;
//activate Camera
waitUntil {camCommitted _cam;};
//End Camera
_cam cameraeffect ["terminate", "back"];
camdestroy _cam;
};		
sleep 3.5;
// Start Parachute Animation
{unassignVehicle _x} forEach crew _chopper;
_unit action["EJECT",vehicle _unit];
_unit setPosASL [ (getPosASL _Dropzone select 0), (getPosASL _Dropzone select 1), (getPosASL _Dropzone select 2) + 500];

If (true) then{
// Remove Props
sleep 1;
deleteVehicle _G1;
deleteVehicle _chopper;
deleteGroup _heliman;
};
};