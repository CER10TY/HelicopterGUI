HeloView_Open = false;
HeloView_newVehicle = objNull;

[] spawn {
disableSerialization;
waitUntil {HeloView_Open};
_ctrl = (findDisplay 1) displayCtrl 1900;
_combobox = (findDisplay 1) displayCtrl 1503;
_ctrl sliderSetRange [1,2];
	{
	_combobox lbAdd _x;
	} foreach (["campoints"] call TRT_fnc_selections);
};

[] spawn {
	disableSerialization;
	waitUntil {HeloView_Open};
	_lbCamo = (findDisplay 1) displayCtrl 1500;
	{
		_lbCamo lbAdd _x;
	} foreach (["camo"] call TRT_fnc_selections);
};
/*
[] spawn 
{
disableSerialization;
waitUntil {HeloView_Open};
(findDisplay 46) displayAddEventHandler ["MouseButtonDown","_this call TRT_fnc_panCameraStart"];
};
*/