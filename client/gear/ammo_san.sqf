                                                /////////////////////////////////////////////////////
// Called from an ammocrate's init field via:
// null = this execVM "ammo_san.sqf";
/////////////////////////////////////////////////////

while {alive _this} do
{

// Remove the stock items from the crate


_this addMagazineCargo ["ACE_Medkit", 200];
_this addMagazineCargo ["ACE_Plasma", 200];
_this addMagazineCargo ["ACE_IV", 200];
_this addMagazineCargo ["ACE_Splint", 200];
_this addMagazineCargo ["ACE_Epinephrine", 200];
_this addMagazineCargo ["ACE_Morphine", 200];
_this addMagazineCargo ["ACE_Tourniquet", 200];
_this addMagazineCargo ["ACE_LargeBandage", 200];
_this addMagazineCargo ["ACE_Bandage", 200];
_this addMagazineCargo ["ACE_Bodybag", 200];

// Restock time.
sleep 900;
}; 