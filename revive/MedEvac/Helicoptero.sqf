//Script que controla al medico del medevac
private['_Helicoptero','_HelipuertoBase','_Helinum','_condicion'];

_Helicoptero=_this select 0;
_HeliRespawnTime=if (count _this > 2) then {_this select 2} else {0};
_HeliSide=if (count _this > 3) then {_this select 3} else {side (group (driver _Helicoptero))};
if (_HeliSide== sideUnknown) then {_HeliSide=side (group (driver _Helicoptero))};


waituntil {!isnil 'Colum_revive_Path'};
if (!isDedicated) then
{
	waituntil {!isnull player};

	if (playerside == _HeliSide) then {
		_condicion ='[player] call ACE_fnc_HasRadio';

		Colum_revive_Accion_condicion=if (count _this > 1) then {_this select 1} else {_condicion};
		if (Colum_revive_Accion_condicion == "") then {Colum_revive_Accion_condicion = 'true'};
		if (isnil { player getvariable 'Colum_revive_Accion_evacSan'}) then {
			_accion=true;
			["player", [ace_sys_interaction_key_self], 4, [format['%1Data\menu\fnc_menuDef_Self.sqf',Colum_revive_Path], "main"]] call CBA_ui_fnc_add;
			//_accion=player addAction ["<t color='#f0FE9A2E'>Pedir evacuacion medica</t>", "revive\Data\accion.sqf", 0, 0, false, true,'', _condicion];
			player setvariable ['Colum_revive_Accion_evacSan',_accion];
		};
	};
};

execVM format['%1Data\Fun_Heli.sqf',Colum_revive_Path];


_Helicoptero lockDriver true;
_Helicoptero setVariable ["ace_w_heal", true];//vehiculo medico

if (!isserver) exitwith{}; //Solo el servidor a partir de aqui


if (isnil "Colum_Revive_HeliList") then {Colum_Revive_HeliList=[]};
_Helinum= count Colum_Revive_HeliList;
Colum_Revive_HeliList=Colum_Revive_HeliList+[_Helicoptero];


_list= nearestObjects [_Helicoptero, ["HeliH"], 15];
if ((count _list) > 0) then {
	_HelipuertoBase=_list select 0;
} else {
	if ((getposATL _Helicoptero select 2) < 5) then {
		_HelipuertoBase = createVehicle ["HeliHRescue", getpos _Helicoptero, [], 0, "CAN_COLLIDE"];
	};
};



_Helicoptero setVariable ["Colum_Revive_HeliBase",getpos _Helicoptero];
_Helicoptero setVariable ["Colum_Revive_HeliBaseDir",getdir _Helicoptero];
_Helicoptero setVariable ["Colum_Revive_HeliNum",_Helinum];
(driver _Helicoptero) setVariable ["Colum_Revive_HeliNum",_Helinum];
_Helicoptero setVariable ["Colum_Revive_HeliOcupado",0];
_Helicoptero setVariable ["colum_heli_respawn",_HeliRespawnTime];
_Helicoptero setVariable ["colum_heli_HeliSide",_HeliSide];


_Helicrew=[];
{
	_tmparr=[typeof _x,assignedVehicleRole _x];
	_Helicrew=_Helicrew+[_tmparr];
}foreach crew _Helicoptero;
_Helicoptero setVariable ["colum_heli_crew",_Helicrew];




_ehID=(driver _Helicoptero) addEventHandler["killed", {_this spawn Colum_revive_HeliPilotoMuerto}];
_piloto setvariable ["colum_revive_pilotoEH",_ehID];

_ehID=_Helicoptero addEventHandler["GetOut", {_this spawn Colum_revive_Helidestruido}];
_Helicoptero setvariable ["colum_revive_heliEH",_ehID];