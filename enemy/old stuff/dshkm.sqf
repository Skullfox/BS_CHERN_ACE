//["marker","anzahl"] execvm "routes\blockaden\dshkm.sqf";

private ["_marker","_x","_y","_static","_z","_pad","_anzahl"];
_marker = _this select 0;
_anzahl = _this select 1;

_pad = "HeliHEmpty" createVehicle (getMarkerPos _marker);




 switch (_anzahl) do
 {
     case "1":
     {
         //1xMG
         _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
     };

     case "2":
     {
         //2xMG
         _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
         
         _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
     };  
  
     case "3":
     {
         //3xMG
         _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
         
          _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
         
         _x = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _y = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _z = [20,10,0,-10,-20] call BIS_fnc_selectRandom;
         _static = "DSHKM_TK_GUE_EP1" createVehicle (_pad modelToWorld [_x,_y,_z]);
         

     };
};










