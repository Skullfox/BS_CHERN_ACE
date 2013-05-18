///Easier translations, all messages here

Colum_Revive_Funcion_Message = {
	private ["_MessageID","_Params"];
	_MessageID= _this select 0;
	_Params= _this select 1;

	switch (_MessageID) do
	{
	  case 1: {hint format["Lifes: %1 of %2",Colum_revive_VidasLocal-1,Colum_revive_VidasMax-1];};
	  case 2: {titlecut ["You are death","PLAIN",2]};
	  case 3: {10 cutText [format["You are heavily wounded: You where wounded by %1. FRIENDLY FIRE",name _Params],"PLAIN",1];};
	  case 4: {10 cutText ["You are heavily wounded","PLAIN",1];};
	  case 5: {10 cutText ["You are heavily wounded:You committed suicide","PLAIN",1];};
	  case 6: {10005 cutText ["You have entered a medic zone. Wait to be healed...","PLAIN",2];};
	  case 7: {10 cutText ["Please, ONLY use respawn button in needed situations","BLACK"];};
	  case 8: {10 cutText ["Respawning...","PLAIN DOWN"];};
	  case 9: {10 cutText ["Press F12 within the next 5 minutes to teleport with your squad/allies","PLAIN",2];};
	  case 10: {[playerSide, "HQ"] sideChat format["%1 Friendly Fire!!, you have wounded %2",name (_Params select 0),name (_Params select 1)];};
	  case 11: {format["%1 is heavily wounded", name _Params] call CBA_fnc_systemChat;};
	  case 12: {Hint 'JIP failure to retrieve lifes, please report this error';diag_log['Revive failed to retrieve lifes from server, may be cause by extreme script lag'];};
	  case 13: {titlecut ["Your body is washing ashore please wait","BLACK FADED",5]};
	  case 14: {format["%1 wounded",(name _Params)];};
	  case 15: {format["(%1)More...",Colum_revive_RespawnButton_Pos+1];};
	  case 16: {10 cutText ["There is no medics left alive, so you won't be able to be revived","PLAIN",3];};
	  case 17: {10005 cutText [format["Respawn available in: %1",_Params],"PLAIN DOWN",2];};
	  default {};
	};
};

Colum_revive_HeliMSG= {
	switch(_this) do
	{
	  case 0: { [playerside,"HQ"] sidechat "There is no medevac avaliable at the moment"};
	  case 1: { [playerside,"HQ"] sidechat "Smoke in sight"};
	  case 2: { [playerside,"HQ"] sidechat "We can't locate the smoke, we are low of fuel, returning to base"};
	  case 3: { [playerside,"HQ"] sidechat "HQ understood, sending medevac. Get ready to throw green smoke"};
	  case 4: { [playerside,"HQ"] sidechat "Roger, medevac returnig base"};
	  case 5: { [playerside,"HQ"] sidechat "Medevac aproaching landing zone, mark a safe zone with green smoke"};
	  case 6: { [playerside,"HQ"] sidechat "Negative, you are almost in the base."};
	  case 7: {"Call medevac"};
	  case 8: {"Everybody in, GO GO GO!."};
	};
};