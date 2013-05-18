/* Created via ArmAScript Wizard */
if (isServer) then{
_vehicle = _this select 0;

_NewGroup = CreateGroup east;
_unitname = _NewGroup createUnit ["RUS_Soldier_TL",[0,0, 0], [], 0, "CAN_COLLIDE"];
_unitname moveingunner _vehicle;
};