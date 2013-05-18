

//==================================================================
//                         PARENT CLASSES
//==================================================================
class RscText
{
	type = 0;
	idc = -1;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0x100; 
	font = Zeppelin32;
	SizeEx = 0.03921;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0, 0, 0, 0};
	linespacing = 1;
};
class RscStructuredText
{
	access=0;
	type=13;
	idc=-1;
	style=0;
	h=0.050000;
	text="";
	size=0.040000;
	colorText[]={1,1,1,1};
	class Attributes
	{
		font="TahomaB";
		color="#ffffff";
		align="left";
		shadow=1;
	};
};
/*
class RscStructuredText
{
	access = ReadAndWrite;
	type = 13;
	idc = -1;
	style = 2 + 16;
	lineSpacing = 1;
	w = 0.1;
	h = 0.05;
	size = 0.020;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0,0,0,0};
	text = "";
	font = "EtelkaMonospaceProBold";
	class Attributes {
		font = "EtelkaMonospaceProBold";
		color = "#fffff";
		align = "left";
		shadow = true;
	};
};
*/
class RscActiveText
{
	access=0;
	type=11;
	style=2;
	h=0.050000;
	w=0.150000;
	font="TahomaB";
	sizeEx=0.040000;
	color[]={1,1,1,1};
	colorActive[]={1,0.500000,0,1};
	soundEnter[]={"",0.100000,1};
	soundPush[]={"",0.100000,1};
	soundClick[]={"",0.100000,1};
	soundEscape[]={"",0.100000,1};
	text="";
	default=0;
};
class RscPicture
{
	access=0;
	type=0;
	idc=-1;
	style=48;
	colorBackground[]={0,0,0,0};
	colorText[]={1,1,1,1};
	font="TahomaB";
	sizeEx=0;
	lineSpacing=0;
	text="";
};
class RscObject
{
	access=0;
	type=80;
	scale=1.000000;
	direction[]={0,0,1};
	up[]={0,1,0};
};


//===============================
//======= RUSSIAN RULETTE =======
//===============================
class matchbox
{
	IDD = 2009;
	MovingEnable = 0;
	onload = "uinamespace setvariable ['str_match',_this select 0];";
	
	class ControlsBackground
	{

		class tooltip_0: RscText
		{
			idc = 200910;
			style = 0 + 16;
			colorText[] = {1,1,1,1};
			colorActive[]={1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,0.7};
			text="Ed Winter\n(Player)"; 
			x=0.0+10;
			y=0.7;
			w=0.2;
			h=0.08;
			SizeEx = 0.028*1.1;	
		};
		class tooltip_1: tooltip_0
		{
			idc = 200911;
			y=0.6;	
		};
		class tooltip_2: tooltip_0
		{
			idc = 200912;
			y=0.5;	
		};
		class tooltip_3: tooltip_0
		{
			idc = 200913;
			y=0.4;	
		};
		class tooltip_4: tooltip_0
		{
			idc = 200914;
			y=0.3;	
		};
		class tooltip_5: tooltip_0
		{
			idc = 200915;
			y=0.2;	
		};
	};
	class Controls
	{

		class match_0: RscActiveText
		{
			idc = 200900;
			style=48;
			colorActive[]={1,1,1,1};
			text=""; 
			x=0.3;
			y=safezoneY + safezoneH - 0.3;
			w=0.1;
			h=1.0;
		};
		class match_1: match_0
		{
			idc = 200901;
			x=0.4;	
		};
		class match_2: match_0
		{
			idc = 200902;
			x=0.5;	
		};
		class match_3: match_0
		{
			idc = 200903;
			x=0.6;	
		};
		class match_4: match_0
		{
			idc = 200904;
			x=0.7;	
		};
		class match_5: match_0
		{
			idc = 200905;
			x=0.8;	
		};
	};
};









//===============================
//===== Info about place ========
//===============================
	class RscInfoPlace
	{
		idd = 999;
		movingEnable = 1;
		duration = 10;
		fadein = 1;
		fadeout = 1;
		name = "Info";
		onload = "uinamespace setvariable ['str_infoplace',_this select 0];";

		class controls
		{
			class Text : RscStructuredText
			{
				idc = 9999;
				style = 1 + 16;
				text = "";
				x = safezoneX + 0.05;
				y = safezoneY + safezoneH - 0.2;
				w = 1;
				h = 0.090000;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,0};
				size = 0.05;
				sizeEx = 0.4;
				font = "EtelkaMonospaceProBold";
			};
		};

	};
//===================================
//============== Name ===============
//===================================
	class EW
	{ 
		idd=-1; 
		movingEnable=1; 
		duration=10e10; 
		fadein=0;
		name="EW"; 
		onload = "uinamespace setvariable ['bis_ew',_this select 0];";
		class controls
		{
			class E: RscPicture 
			{
				idc = 100021;
				text=""; 
				x=0.35+0.02;
				y=0.25;
				w=0.15;
				h=0.4;	  
				//style=48+64;
			};
			class W: E
			{
				idc = 100022;
				text=""; 
				x=0.5-0.02;
			};
			class EW: RscPicture 
			{
				idc = 100023;
				text=""; 
				x=-0.1;
				y=0.35;
				w=1.2;
				h=0.2;	 	  	
				//w=0.8*1.25;
				//h=0.125*1.25;	 	  	
			};

		};
	};

//===================================
//========== Moricky.com ============
//===================================
	class moricky
	{ 
		idd=-1; 
		movingEnable=1; 
		duration=3; 
		fadein=1;
		fadeout=1;
		name="Moricky.com"; 
		onload = "uinamespace setvariable ['str_moricky',_this select 0];";
		class controls
		{
			class moricky1: RscPicture 
			{
				idc = 9999;
				//text="ca\missions_ew\img\moricky_ca.paa"; 
				text="ca\ui\data\startup_logo_bi_ca.paa";
				x=0.2;
				y=0.3;
				w=0.6;
				h=0.4;	  
				//style=48+64;
			};
			class moricky2: moricky1
			{
				idc = -1;
				w=0;
				h=0;
				//text="ca\missions_ew\img\moricky_splat_ca.paa";
				text="ca\ui\data\startup_logo_bi_ca.paa";
			};
		};
	};
	class moricky_end
	{ 
		idd=-1; 
		movingEnable=1; 
		duration=6; 
		fadein=0.2;
		name="Moricky.com"; 
		onload = "uinamespace setvariable ['str_moricky',_this select 0];";
		class controls
		{
			class moricky1: RscPicture 
			{
				idc = 9999;
				//text="ca\missions_ew\img\moricky_ca.paa";
				text="ca\ui\data\startup_logo_bi_ca.paa";
				x=0.2;
				y=0.3;
				w=0.6;
				h=0.4;	  
				colortext[] = {0,0,0,1};
			};
		};
	};

//===============================
//========== Credits ============
//===============================
	class credits
	{
		idd = -1;
		movingEnable = 1;
		duration = 10e10;
		fadein = 0;
		fadeout = 0;
		name = "Info";
		onload = "uinamespace setvariable ['str_credits',_this select 0];";

		class controls
		{
			class Text : RscStructuredText
			{
				idc = 9999;
				style = 1 + 16;
				text = "";
				x = 0;
				y = 0.45;
				w = 1;
				h = 10000;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,0};
				size = 0.05;
				sizeEx = 0.4;
				class Attributes
				{
					font="TahomaB";
					color="#ffffff";
					align="center";
					shadow=0;
					valign='middle';
				};
			};
		};
	};

//===================================
//============ Screen ===============
//===================================
	class screen
	{ 
		idd=-1; 
		movingEnable=1; 
		duration=10e10; 
		fadein=0;
		fadeout=1;
		name="Screen"; 
		onload = "uinamespace setvariable ['str_screen',_this select 0];";
		class controlsbackground
		{
			class vignette: RscPicture 
			{
				idc = -1;
				text="ca\missions_ew\img\vignette_ca.paa";
				x=safezoneX;
				y=safezoneY;
				w=safezoneW;
				h=safezoneH;
				colortext[] = {1,1,1,0.7};
			};
		};
		class controls
		{
			class screen_0: RscPicture 
			{
				idc = 1000;
				text="ca\missions_ew\img\screen_dirt_ca.paa";
				x=safezoneX;
				y=safezoneY;
				w=0;
				h=0;	  
			};
			class screen_1: screen_0	{idc = 1001; text="ca\missions_ew\img\screen_blood_1_ca.paa";};
			class screen_2: screen_0	{idc = 1002; text="ca\missions_ew\img\screen_blood_2_ca.paa";};
			class screen_3: screen_0	{idc = 1003; text="ca\missions_ew\img\screen_blood_3_ca.paa";};
			class screen_4: screen_0	{idc = 1004; text="ca\missions_ew\img\screen_blood_1_ca.paa";};
			class screen_5: screen_0	{idc = 1005; text="ca\missions_ew\img\screen_blood_2_ca.paa";};
			class screen_6: screen_0	{idc = 1006; text="ca\missions_ew\img\screen_blood_3_ca.paa";};
		};
	};


//===================================
//======== Do not fire ==============
//===================================
	class nofire
	{ 
		idd=-1; 
		movingEnable=1; 
		duration=10e10; 
		fadein=0;
		fadeout=1;
		name="Screen"; 
		onload = "uinamespace setvariable ['str_nofire',_this select 0];";
		class controls
		{
			class icon: RscPicture 
			{
				idc = -1;
				text="ca\missions_ew\img\nofire_ca.paa";
				x=safezonex + safezoneW - 0.16;
				y=safezoneY + 0.05;
				w=0.06;
				h=0.08;
				colortext[] = {0.84,1,0.55,1};
			};
		};
	};

//===============================
//======== World End ============
//===============================
	class world
	{
		idd = -1;
		movingEnable = 1;
		duration = 10e10;
		fadein = 0;
		fadeout = 0;
		name = "Info";
		onload = "uinamespace setvariable ['str_world',_this select 0];";

		class controls
		{
			class back: RscText
			{
				x = safezoneX;
				y = safezoneY;
				w = safezoneW;
				h = safezoneH;
				colorbackground[] = {0,0,0,1};
				text = "";
			};
			class world: RscPicture 
			{
				idc = 99;
				text="ca\missions_ew\img\map_ca.paa";
				x=safezoneX;
				y=safezoneY + (safeZoneH-(safezoneW/2/0.75))/2;
//safezoneY + safezoneH/2 - (safezoneW/4/0.75);
				w=safezoneW;
				h=safezoneW/2/0.75;	  
				/*
				x=0;
				y=(1-(0.5/0.75))/2;
				w=1;
				h=0.5/0.75;
				*/
			};
			class boom_0: RscPicture 
			{
				idc = 100;
				text="ca\missions_ew\img\map_blast_ca.paa"; 
				x=-1;
				y=-1;
				w=0.03;
				h=0.03/0.75;	  
			};
			class boom_1: boom_0	{idc = 101;};
			class boom_2: boom_0	{idc = 102;};
			class boom_3: boom_0	{idc = 103;};
			class boom_4: boom_0	{idc = 104;};
			class boom_5: boom_0	{idc = 105;};
			class boom_6: boom_0	{idc = 106;};
			class boom_7: boom_0	{idc = 107;};
			class boom_8: boom_0	{idc = 108;};
			class boom_9: boom_0	{idc = 109;};
/*
			class wtf: RscPicture 
			{
				idc = 110;
				text="ca\missions_ew\img\map_wtf_ca.paa"; 
				x=safezoneX + 0.74*safezoneW;
				y=safezoneY + 0.67*safezoneH;
				w=0.13*safezoneW;
				h=(0.13/1.5)*safezoneH;	  
			};
*/
		};
	};



