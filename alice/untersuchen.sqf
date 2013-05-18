

private ["_object","_player"];
_object = _this select 0;
_player = _this select 1;


if  (_player distance _object  <= 2) then {

//[_object] execVM "alice\suicide_shooter.sqf";
hint "Die Person beachtet dich nicht.";

}else {
    
Hint"Du bist zu weit weg um etwas zu erkennen.";

};
