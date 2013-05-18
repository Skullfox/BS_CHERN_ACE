
private ["_crate","_check"];

_crate = _this select 0; 
_check = _this select 1; 
CRATE_PATH = "actions\";

 switch (_check) do
 {
     case "0":
     {
            _crate setVehicleInit format["
		this addAction ['<t color=""#F00000"">Untersuchen</t>','%1crates_f.sqf'];
		",CRATE_PATH]; processInitCommands;

     };
     
     case "1":
     {
         _crate setVehicleInit format["
		this addAction ['<t color=""#F00000"">Untersuchen</t>','%1crates_t.sqf'];
		",CRATE_PATH]; processInitCommands;

     };
 };
