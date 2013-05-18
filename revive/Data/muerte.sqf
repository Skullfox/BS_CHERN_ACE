//Script que se ejecuta cuando al jugador no le quedan mas vidas
private ["_Escuadra","_uncon","_timeout","_idJugador"];


//vidas del jugador a 0 
Colum_revive_VidasLocal=0;
_idJugador = getPlayerUID player;
if ((_this select 0) ==0) then {
	//No need to udpate if connected with already 0 lifes
	if (!isNil 'ACE_fnc_clientToServerEvent') then
	{
		['colum_revive_UPL', [_idJugador,Colum_revive_VidasLocal]] call ACE_fnc_clientToServerEvent;
	} else {
		['colum_revive_UPL', [_idJugador,Colum_revive_VidasLocal]] call CBA_fnc_globalEvent; // TODO: remove after stable 1.14 release
	};
};


//Esto pasa si pulsan respawn mientras tan con cuenta atras
if ((player getVariable "ace_w_revive") > 0) then {	player setVariable ["ace_w_revive",0]; sleep 1};

//esperamos q haga respawn si esta muerto
if (!(alive player)) then { waitUntil {alive player}};

player setPos getMarkerPos "Boot_hill";

//player SetVariable ["ace_sys_wounds_uncon",true,true]; // can cause problems with ACRE detecting unit wounded?
player SetVariable ["ace_sys_spectator_exclude",true,true]; // Changed to public setvar instead of using ace_sys_wounds_uncon

//cambio de lider
if (Colum_revive_Death_LeaveGroup) then
{
	[player] joinsilent grpnull;
} else {
	call Colum_Revive_NuevoLider;
	if (isnil 'Revive_bucle_Control_Lider') then {
		Revive_bucle_Control_Lider=true;
		[] spawn { While {true} do { sleep 30; call Colum_Revive_NuevoLider}};
	};
};

titleText ["","BLACK"];

[2,0] call Colum_Revive_Funcion_Mensage;

if (Colum_revive_PlayerStatusWounded) then {waituntil {!Colum_revive_PlayerStatusWounded}};
sleep 0.5;


if (Colum_spect_workaround) then {
	//TODO: remove spectator workarounds :P
	call Colum_Revive_terminateSpectator;
}else{
	ace_sys_spectator_exit_spectator = true;
	_timeout =time+4;
	waituntil {(_timeout< time) || !ace_sys_spectator_SPECTATINGON};
};

if (!isnil "acre_api_fnc_setSpectator") then {[true] call acre_api_fnc_setSpectator};

titleText ["","BLACK IN"];

sleep .1;


ace_sys_spectator_ShownSides=nil;ace_sys_spectator_maxDistance=nil;
ace_sys_spectator_CheckDist=nil; ace_sys_spectator_CheckUncon = true;
ace_sys_spectator_no_butterfly_mode = true;
ace_sys_spectator_can_exit_spectator=false;

ace_sys_spectator_playable_only = not Colum_revive_VerEnemigos;
if (!Colum_revive_VerEnemigos) then {ace_sys_spectator_ShownSides=[playerside]};
ace_sys_spectator_RevButtons= nil;
ace_sys_spectator_RevShowButtonTime= nil;

[player, player, ''] spawn ace_fnc_startSpectator;
sleep .1;
player setPos getMarkerPos "Boot_hill";
player setCaptive true;
sleep .1;
player playMoveNow "AdthPercMstpSrasWrflDb_16";
sleep .1;
player switchmove "AdthPercMstpSrasWrflDb_16";
[2,0] call Colum_Revive_Funcion_Mensage;
