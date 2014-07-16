/*
Author: tryteyker
Last Revision 2014-07-16
Standard credits to creator apply
*/

HeloView_vehicle = vehicle player;
//_pos = [(getposATL HeloView_vehicle select 0 + 100), (getposATL HeloView_vehicle select 0 + 100), 0];
HeloView_LOGIC = createVehicle ["Land_HelipadEmpty_F",[((getposATL HeloView_vehicle select 0) + 100), ((getposATL HeloView_vehicle select 1) + 100), 2000],[],0,"NONE"];
HeloView_LOGIC setDir 0;
HeloView_newVehicle = createVehicle [typeOf (HeloView_vehicle), getposATL HeloView_LOGIC, [], 0, "CAN_COLLIDE"];
HeloView_newVehicle setDir 0;
HeloView_newPos = getposATL HeloView_newVehicle;
// We don't need to disable simulation for objects specifically as that is done in the GUI as enableSimulation = 0 as IDD param.
//HeloView_newVehicle enableSimulation true;
HeloView_newVehicle attachTo [HeloView_LOGIC,[0,0,1]];
// Create cam
HeloView_ViewCam = "camera" camCreate HeloView_newPos;
HeloView_ViewCam cameraEffect ["internal", "back"];
showCinemaBorder false;
HeloView_ViewCam camSetTarget HeloView_newVehicle;
HeloView_ViewCam camSetPos [(HeloView_newPos select 0), ((HeloView_newPos select 1) + 6), ((HeloView_newPos select 2) + 2)];
HeloView_Viewcam camSetFov 2;
HeloView_Viewcam camCommit 0;

// Variables are simply there for zoom function used later; Todo - set and get variables so I don't have to edit them manually everytime.
HeloView_minZoom = 0.1;
HeloView_maxZoom = 2;
HeloView_currentZoom = 2;