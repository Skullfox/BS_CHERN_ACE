//by Bon_Inf*
#include "dialog\definitions.sqf"
disableSerialization;

_display = (_this select 0) select 0;

sliderSetRange [BON_SETTINGS_SLIDER, 500 , 501 max bon_settings_maxallowed_viewdist];
sliderSetPosition [BON_SETTINGS_SLIDER,vpos];

while {dialog} do {
	vpos = (sliderPosition BON_SETTINGS_SLIDER);
	setviewdistance vpos;
	ctrlSetText [BON_SETTINGS_SLIDERTITLE, format["Viewdistance %1m",(round vpos)]];
	if(GrassLayerchanged) then{
		switch GrassLayer do {
			case 4 : {setTerrainGrid 50};
			case 3 : {setTerrainGrid 25};
			case 2 : {setTerrainGrid 12.5};
			case 1 : {setTerrainGrid 6.25};
			case 0 : {setTerrainGrid 3.125};
		};
	GrassLayerChanged = false;
	};
	sleep 0.01;
};