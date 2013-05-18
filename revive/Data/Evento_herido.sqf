private ["_Asesino","_parametros","_idJugador"];


if (Colum_revive_VidasLocal !=1000) then {
	//One live less
	Colum_revive_VidasLocal=Colum_revive_VidasLocal-1;
	_idJugador = getPlayerUID player;
	if (!isNil 'ACE_fnc_clientToServerEvent') then
	{
		['colum_revive_UPL', [_idJugador,Colum_revive_VidasLocal]] call ACE_fnc_clientToServerEvent;
	} else {
		['colum_revive_UPL', [_idJugador,Colum_revive_VidasLocal]] call CBA_fnc_globalEvent; // TODO: remove after stable 1.14 release
	};
};

if (Colum_revive_VidasLocal <= 0) exitwith {};
if ((Colum_revive_WaveTime_Respawn select 0) >=0 and (Colum_revive_WaveTime_Respawn select 1) > 0) then {
	_initialWave=(Colum_revive_WaveTime_Respawn select 0);
	_WaveDelay=(Colum_revive_WaveTime_Respawn select 1);

	if (time > _initialWave) then {
		ace_sys_spectator_RevShowButtonTime=(_WaveDelay -((time - _initialWave) % _WaveDelay));
	} else {
		ace_sys_spectator_RevShowButtonTime=(_initialWave -time);
	};
};

Colum_revive_Count_Start_Time=time;
Colum_revive_PlayerStatusWounded=true;
Colum_Revive_Funcion_CantBeRevived_msg=false;
Colum_Revive_last_respawn_msg=time+30;
player setvariable["Colum_revive_isOnPMR",Colum_revive_PlayerStatusWounded,true];

sleep 0.5;// Wait for hit event ( sometimes this event was faster than hit event so no propper attacker was detected)
//Count down while uncons
ace_sys_spectator_can_exit_spectator=false;
//[] spawn { sleep ace_sys_spectator_RevShowButtonTime; BotonesRevive=true; call Colum_Revive_CambiarBotones };

_parametros=[player,playerside];
_Asesino = [] call Colum_revive_JugadorComprobarTK;

if (!isnil "_Asesino") then { _parametros=_parametros +[_Asesino]};


//Turn off the vehicle engine if this player was the driver, this will avoid "ghost choppers"( death pilot and auto-hover ON)^^.
if ((vehicle player!=player)&&((driver(vehicle player))== player)) then {[] spawn {sleep 10;player action ["engineOff",(vehicle player)]}}; 


['colum_revive_DeadP', _parametros] call CBA_fnc_globalEvent;


While { ((player getVariable "ace_w_revive") > 0) && (alive player)} do {
	call Colum_Revive_NuevoLider; 
	call Colum_revive_CheckRespawn;
	call colum_Revive_checkMedical;
	if (!(call Colum_Revive_Funcion_CanBeStillRevived)) then {call Colum_Revive_Funcion_CantBeRevived};
	[] spawn Colum_Revive_Funcion_WaterAction;
	sleep 9;
};

//Restore mapclick event(spectator removes it)
if (!isnil"EventoMapClick") then {
	[] spawn 
	{
		if (ace_sys_spectator_SPECTATINGON) then 
		{ waitUntil {!ace_sys_spectator_SPECTATINGON}};
		sleep 2; waitUntil {!isNull player}; onMapSingleClick EventoMapClick;
	};
};


if (!alive player) then {waitUntil {alive player}};

call Colum_Revive_RenombraLider;
if (Colum_revive_Levanta_Heal) then {-1 spawn Colum_Revive_Acciones};
[1,0] call Colum_Revive_Funcion_Message;

if (Colum_revive_VidasLocal <= 1) then{
		ace_wounds_prevtime = 0;	
}; // ToDo: check if this new method for last life can cause conflicts with ACE wounds.

if (isnil 'ace_sys_wounds_withSpect') then {
	if(dialog) then{closedialog 0};
} else{
	if (Colum_spect_workaround) then {
		//TODO: remove spectator workarounds :P
		if (ace_sys_spectator_SPECTATINGON) then {
			_timeout =time+30;
			waituntil{(_timeout< time) || (!(player getVariable ["ace_w_bout", false]) && ((player getVariable ["ace_w_fsm", 0])==0))};
			sleep 5;
			call Colum_Revive_terminateSpectator;
		};
	};
};

sleep 1;
Colum_revive_PlayerStatusWounded=false;
player setvariable["Colum_revive_isOnPMR",Colum_revive_PlayerStatusWounded,true];



