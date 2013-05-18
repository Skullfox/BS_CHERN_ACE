

private ["_random","_man","_crate"];
_man = _this select 1;
_crate = _this select 0;


if(_man distance _crate  <= 2) then {

[-2, {
_man switchMove "REPAIRINGKNEEL";
}] call CBA_fnc_globalExecute;

sleep 20;

[-2, {
_man switchMove "";
}] call CBA_fnc_globalExecute;

sleep 20;

_random = ["0","1","2","3","4","5"] call BIS_fnc_selectRandom;

switch (_random) do
{
     case "0":
     {
         hint"Hier liegt nur Müll rum.";
     };
     case "1":
     {
         hint"In dieser Kiste, ist nichts besonderes.";
     };
     case "2":
     {
         hint"In dieser Kiste, liegt ein stapel Amerikanischer Pornohefte";
     };
     case "3":
     {
         hint"In der Kiste sind nur Bananen";
     };
     case "4":
     {
         hint"Diese Kiste ist leer.";
     };
     case "5":
     {
       hint"Eine alte Unterhose, vermutlich von einem Taliban";
     };
};

[-2, {
_crate removeAction 0;
}] call CBA_fnc_globalExecute;

}
else
{
hint"Ich bin zu weit weg um die Kiste zu untersuchen";
};
