//by Bon_Inf*
// very simple IED script :-P

// NOTE: depending on the number roads on the map,
// 	 the IED creation and initialization can
//	 take up to a few minutes



BON_IED_PATH = "bon_ieds\";


// number ieds; values between [0,4]
// 0 - no ieds
// 4 - max. possible according to the minimum distance between two ieds
bon_number_ieds = 1;

bon_min_distance_between_ieds = 250;

bon_ied_container = [
	"Land_Misc_Garb_Heap_EP1","HMMWVWreck","hiluxWreck","datsun01Wreck",
	"datsun02Wreck","SKODAWreck","T72WreckTurret","UAZWreck","BMP2Wreck",
	"BRDMWreck","T72Wreck","UralWreck",
	"Land_IED_v1_PMC","Land_IED_v2_PMC","Land_IED_v1_PMC","Land_IED_v2_PMC",
	"Land_IED_v1_PMC","Land_IED_v2_PMC","Land_IED_v1_PMC","Land_IED_v2_PMC"
];


bon_ied_boomlist = ["ARTY_Sh_105_HE","Bo_GBU12_LGB","Sh_85_HE"];

//comment out the next line if no greenzone should be established
bon_ied_greenzone = [getmarkerpos "respawn1",350]; // [position,radius] no IED shall spawn


[] execVM (BON_IED_PATH+"ied_creation.sqf");

if(isServer) then{
	"bon_ieds_ied_defused" addPublicVariableEventHandler {(_this select 1) execVM (BON_IED_PATH+"ied_defusion_handler.sqf")};
};