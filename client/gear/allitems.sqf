// Called from an ammocrate's init field via:
// null = this execVM "item.sqf";
/////////////////////////////////////////////////////

while {alive _this} do
{

// Remove the stock items from the crate
clearMagazineCargo _this;
clearWeaponCargo _this;

_this addweaponCargo ["ItemMap", 75];
_this addweaponCargo ["ItemCompass", 75];
_this addweaponCargo ["ItemWatch", 75];
_this addweaponCargo ["ACE_GlassesTactical", 75];
_this addweaponCargo ["ACE_GlassesLHD_glasses", 75];
_this addweaponCargo ["ACE_GlassesGasMask_RU", 75];
_this addweaponCargo ["ACE_Earplugs", 75];
_this addweaponCargo ["ACE_KeyCuffs", 75];
_this addweaponCargo ["ACE_GlassesBalaklava", 75];
_this addweaponCargo ["ItemGPS", 75];
_this addweaponCargo ["ACE_Map_Tools", 75];
_this addweaponCargo ["ACE_MX2A", 75];
_this addweaponCargo ["NVGoggles", 75];
_this addWeaponCargo ["ACE_CharliePack_WMARPAT", 75];
_this addweaponCargo ["ACE_MugLite", 75];



_this addweaponCargo ["ACE_Kestrel4500", 75];
_this addweaponCargo ["ACE_SpottingScope", 75];
_this addmagazineCargo ["ACE_Battery_Rangefinder", 75];
_this addmagazineCargo ["IR_Strobe_Target", 75];
_this addweaponCargo ["Binocular_Vector", 75];
_this addweaponCargo ["ACE_ParachutePack", 75];



_this addMagazineCargo ["ACE_Knicklicht_Y", 75];
_this addMagazineCargo ["ACE_Knicklicht_W", 75];
_this addMagazineCargo ["ACE_Knicklicht_R", 75];
_this addMagazineCargo ["ACE_Knicklicht_IR", 75];
_this addMagazineCargo ["ACE_Knicklicht_G", 75];
_this addMagazineCargo ["ACE_Knicklicht_B", 75];

_this addweaponCargo ["ACE_Map_Tools", 75];
_this addweaponCargo ["ACE_DAGR", 75];
_this addweaponCargo ["ACE_MineMarkers_MineSign", 75];
_this addweaponCargo ["ACE_SpareBarrel", 75];
_this addweaponCargo ["ACE_MineMarkers", 75];
_this addweaponCargo ["ACE_MineMarkers_MineFlag", 75];
_this addweaponCargo ["ACE_MineMarkers_PathSign", 75];
_this addweaponCargo ["ACE_M224Proxy", 75];
_this addweaponCargo ["ACE_M224TripodProxy", 75];



_this addMagazineCargo ["FlareWhite_M203", 75];
_this addMagazineCargo ["ACE_SSWhite_M203", 75];
_this addMagazineCargo ["FlareGreen_M203", 75];
_this addMagazineCargo ["FlareRed_M203", 75];
_this addMagazineCargo ["FlareYellow_M203", 75];
_this addMagazineCargo ["1Rnd_SmokeRed_M203", 75];


_this addMagazineCargo ["ACE_M224HE_CSWDM", 75];
_this addMagazineCargo ["ACE_M224IL_CSWDM", 75];

_this addMagazineCargo ["20Rnd_762x51_B_SCAR", 75];
_this addMagazineCargo ["Laserbatteries", 75];
_this addMagazineCargo ["ACE_CLAYMORE_M", 75];
_this addMagazineCargo ["30Rnd_556x45_Stanag", 75];
_this addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 75];
_this addMagazineCargo ["30Rnd_556x45_StanagSD", 75];
_this addMagazineCargo ["HandGrenade_West", 75];
_this addMagazineCargo ["ACE_1Rnd_HE_M203", 75];
_this addMagazineCargo ["SmokeShellGreen", 75];
_this addMagazineCargo ["SmokeShellBlue", 75];
_this addMagazineCargo ["SmokeShellRed", 75];
_this addMagazineCargo ["SmokeShell", 75];
_this addMagazineCargo ["ACE_33Rnd_9x19_G18", 75];
_this addMagazineCargo ["200Rnd_556x45_M249", 75];
_this addMagazineCargo ["PipeBomb", 75];
_this addMagazineCargo ["ACE_20Rnd_762x51_S_M110", 75];
_this addMagazineCargo ["ACE_20Rnd_762x51_T_M110", 75];
_this addMagazineCargo ["5Rnd_762x51_M24", 75];
_this addMagazineCargo ["200Rnd_556x45_M249", 75];
_this addMagazineCargo ["100Rnd_762x51_M240", 75];
_this addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag", 75];
_this addMagazineCargo ["ACE_SMAW_Spotting", 75];
_this addMagazineCargo ["SMAW_HEAA", 75];
_this addMagazineCargo ["SMAW_HEDP", 75];
_this addMagazineCargo ["20Rnd_762x51_DMR", 75];
_this addMagazineCargo ["ACE_M2_CSWDM", 75];

_this addMagazineCargo ["7Rnd_45ACP_1911", 75];


_this addweaponCargo ["M60A4_EP1", 75];
_this addweaponCargo ["Mk_48", 75];
_this addweaponCargo ["m16a4_acg", 75];
_this addweaponCargo ["Colt1911", 75];

_this addweaponCargo ["M16A2", 75];
_this addweaponCargo ["M4A3_CCO_EP1", 75];
_this addweaponCargo ["ACE_SOC_M4A1_Eotech_4x", 75];
_this addweaponCargo ["ACE_SOC_M4A1_RCO_GL", 75];
_this addweaponCargo ["ACE_M249_PIP_ACOG", 75];
_this addweaponCargo ["ace_glock18", 75];
_this addweaponCargo ["ACE_Mk12mod1", 75];
_this addweaponCargo ["ACE_SOC_M4A1", 75];
_this addweaponCargo ["ACE_M72A2", 75];
_this addweaponCargo ["ACE_M4", 75];
_this addweaponCargo ["M14_EP1", 75];


_this addweaponCargo ["ACE_M27_IAR", 75];
_this addweaponCargo ["M110_NVG_EP1", 75];
_this addweaponCargo ["M24", 75];
_this addweaponCargo ["SMAW", 75];

//Medic

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
sleep 3000;
};