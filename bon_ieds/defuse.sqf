
private ["_possibleied","_obj","_man","_eng","_playertype"];
_obj = _this select 0;
_man = _this select 1;


_eng = "US_Soldier_Engineer_EP1";
_playertype = typeOf _man;

if ((_playertype == _eng) && (_man distance _obj  <= 5)) then {
    
titleText ["Objekt wird untersucht","PLAIN DOWN"]; titleFadeOut 4;
    
_man switchMove "REPAIRINGKNEEL";
sleep 20;
    
If (IsNil "ied" ) then {ied = ["1","2","3"]};
_possibleied = ied select (floor(random(count ied) ) );   
    
switch (_possibleied) do
 {
     case "1":
     {
         sleep 30;
         deleteVehicle _obj;
         _man switchMove "";
     };

     case "2":
     {
         sleep 30;
         deleteVehicle _obj;
         _man switchMove "";
     };  
  
     case "3":
     {
          _man switchMove ""; 
         playSound "ace_beep_short_1";
         sleep 1;
         playSound "ace_beep_short_1";
         sleep 1;
         playSound "ace_beep_short_1";
         sleep 1;
         playSound "ace_beep_short_1";
         sleep 1;
         playSound "ace_beep_short_1";
         sleep 4;
         "ARTY_Sh_122_HE" createVehicle getPos _obj;
         _obj setvariable ["bon_ied_blowit",true,true];
         deleteVehicle _obj;
     };
};    
    

}else
{  
Hint"Du bist kein Pionier oder du bist zu weit weg";
};

