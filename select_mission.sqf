
hint"Get new mission";

if (isServer) then{
    

missions = ["m1","m2","m3","m4","m5","m6","m7","m8","m9","m10","m11","m12","m13","m14","m15","m16","m17","m18","m19"];
//missions = ["m1"];
getmission  = missions call BIS_fnc_selectRandom;

sleep 5;

	 switch (getmission) do
	 {
	     case "m1":
	     {
	         
	         if ("Mission1" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m1.sqf";missions = missions - [getmission];}
	     };
	     
	          case "m2":
	     {
	         
	         if ("Mission2" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m2.sqf";missions = missions - [getmission];}
	     };
	     
	               case "m3":
	     {
	         
	         if ("Mission3" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m3.sqf";missions = missions - [getmission];}
	     };
	     
	              case "m4":
	     {
	         
	         if ("Mission4" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m4.sqf";missions = missions - [getmission];}
	     };
	     
	              case "m5":
	     {
	         
	         if ("Mission5" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m5.sqf";missions = missions - [getmission];}
	     };
	     
	         case "m6":
	     {
	         
	         if ("Mission6" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m6.sqf";missions = missions - [getmission];}
	     };
	     
	        case "m7":
	     {
	         
	         if ("Mission7" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m7.sqf";missions = missions - [getmission];}
	     };
	     
	        case "m8":
	     {
	         
	         if ("Mission8" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m8.sqf";missions = missions - [getmission];}
	     };
	     
	       case "m9":
	     {
	         
	         if ("Mission9" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m9.sqf";missions = missions - [getmission];}
	     };
	     
	       case "m10":
	     {
	         
	         if ("Mission10" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m10.sqf";missions = missions - [getmission];}
	     };
	       case "m11":
	     {
	         
	         if ("Mission11" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m11.sqf";missions = missions - [getmission];}
	     };
	            case "m12":
	     {
	         
	         if ("Mission12" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m12.sqf";missions = missions - [getmission];}
	     };
	     case "m13":
	     {
	         
	         if ("Mission13" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m13.sqf";missions = missions - [getmission];}
	     };
	     
	          case "m14":
	     {
	         
	         if ("Mission14" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m14.sqf";missions = missions - [getmission];}
	     };
	     
	              case "m15":
	     {
	         
	         if ("Mission15" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m15.sqf";missions = missions - [getmission];}
	     };
	                   case "m16":
	     {
	         
	         if ("Mission16" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m16.sqf";missions = missions - [getmission];}
	     };
	     
	                        case "m17":
	     {
	         
	         if ("Mission17" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m17.sqf";missions = missions - [getmission];}
	     };
	     
	                             case "m18":
	     {
	         
	         if ("Mission18" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m18.sqf";missions = missions - [getmission];}
	     };
	     
	                             case "m19":
	     {
	         
	         if ("Mission19" call SHK_Taskmaster_isCompleted) then {execVM "waiting.sqf";} else {execVM "mission\m19.sqf";missions = missions - [getmission];}
	     };

	 };
	
	};




