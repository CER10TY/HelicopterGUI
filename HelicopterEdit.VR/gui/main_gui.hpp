class TRT_HeloGUI
{
movingenable = false;
//enablesimulation = false;
idd = 1;

	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Sulazi)
		////////////////////////////////////////////////////////

		class TRT_BG: IGUIBack
		{
			idc = 2200;
			x = -0.712121;
			y = -0.409091;
			w = 2.42424;
			h = 1.81818;
		};
		class TRT_HeloFrame: RscFrame
		{
			idc = 1800;
			text = "Object Viewer"; //--- ToDo: Localize;
			x = -0.187879;
			y = -0.272727;
			w = 1.60606;
			h = 1.49091;
			onMouseButtonDown = "call TRT_fnc_panCameraStart";
		};
		class TRT_OptionFrame: RscFrame
		{
			idc = 1801;
			text = "Options"; //--- ToDo: Localize;
			x = -0.651515;
			y = -0.263635;
			w = 0.363636;
			h = 1.49091;
		};
		class TRT_LBCamo: RscListbox
		{
			idc = 1500;
			x = -0.621212;
			y = -0.118182;
			w = 0.272727;
			h = 0.181818;
		};
		class TRT_TextInfoCamo: RscText
		{
			idc = 1000;
			text = "Camouflage"; //--- ToDo: Localize;
			x = -0.621212;
			y = -0.190909;
			w = 0.272727;
			h = 0.0363636;
		};
		class TRT_InfoTextWeapons: RscText
		{
			idc = 1001;
			text = "Weapons"; //--- ToDo: Localize;
			x = -0.621212;
			y = 0.1;
			w = 0.272727;
			h = 0.0363636;
		};
		class TRT_LBWeap: RscListbox
		{
			idc = 1501;
			x = -0.621212;
			y = 0.172727;
			w = 0.272727;
			h = 0.181818;
		};
		class TRT_InfoTextAdditional: RscText
		{
			idc = 1002;
			text = "Additional"; //--- ToDo: Localize;
			x = -0.621212;
			y = 0.390909;
			w = 0.272727;
			h = 0.0363636;
		};
		class TRT_LBAdditional: RscListbox
		{
			idc = 1502;
			x = -0.621212;
			y = 0.463636;
			w = 0.272727;
			h = 0.181818;
		};
		class TRT_ButtonExit: RscButtonMenu
		{
			idc = 2400;
			text = "EXIT VIEWER"; //--- ToDo: Localize;
			x = -0.621212;
			y = 0.9;
			w = 0.151515;
			h = 0.109091;
			action = "closeDialog 0; HeloView_Destroy = [] call TRT_fnc_exitView";
		};
		class TRT_BtnShow: RscButtonMenu
		{
			idc = 2401;
			text = "SHOW VEHICLE"; //--- ToDo: Localize;
			x = -0.621212;
			y = 1.04545;
			w = 0.151515;
			h = 0.109091;
			action = "HeloView_SetCam = [] spawn TRT_fnc_setCamera";
		};
		class TRT_BtnRotate: RscButtonMenu
		{
			idc = 2402;
			text = "ROTATE VEHICLE"; //--- ToDo: Localize;
			x = 1.4697;
			y = 0.790909;
			w = 0.151515;
			h = 0.109091;
			action = "HeloView_Rotate = [] call TRT_fnc_rotateCamera";
		};
		class TRT_SliderZoom: RscSlider
		{
			idc = 1900;
			x = 1.4697;
			y = 1.00909;
			w = 0.181818;
			h = 0.0727273;
			onSliderPosChanged = "call TRT_fnc_zoom";
		};
		class TRT_TextZoomInfo: RscText
		{
			idc = 1003;
			text = "CHANGE ZOOM"; //--- ToDo: Localize;
			x = 1.4697;
			y = 0.936364;
			w = 0.181818;
			h = 0.0363636;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};