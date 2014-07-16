HeloView_Open = false;
HeloView_newVehicle = objNull;

/*
[] spawn 
{
disableSerialization;
waitUntil {HeloView_Open};
(findDisplay 46) displayAddEventHandler ["MouseButtonDown","_this call TRT_fnc_panCameraStart"];
};
*/