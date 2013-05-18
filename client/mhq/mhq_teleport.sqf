
private ["_player"];

_player = _this select 1;



if (alive mhq) then 
{
    
if ((vehicle mhq) emptyPositions "cargo"==0) then 
{
    hint"No Cargo seat free";
} else 
{
    titleCut ["", "BLACK OUT", 3];
    sleep 3;
    //_player setPos (getMarkerPos "mhq_marker");
    _player moveInCargo mhq;
    titleCut ["", "BLACK IN", 5];
};

} else 
{
    hint"MHQ is not Online";
};







