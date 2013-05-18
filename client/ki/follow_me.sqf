
private ["_object","_player"];
_object = _this select 0;
_player = _this select 1;

_object switchMove "";
_object enableAI "move";
[_object] join _player;