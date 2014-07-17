/*
Author: tryteyker
Last Revision: 2014-07-16
Credits to author(s) apply
*/
/*
_zoomLevel = _this select 0;

switch _zoomLevel do {
	case "in":
	{
		HeloView_ViewCam camSetFov (HeloView_currentZoom + 1);
		HeloView_ViewCam camCommit 0;
		HeloView_CurrentZoom = call TRT_fnc_getZoom;
		diag_log format ["CurrentZoomm on ZoomIn: %1",HeloView_CurrentZoom];
	};
	case "out":
	{
		HeloView_ViewCam camSetFov (HeloView_currentZoom + HeloView_minZoom);
		HeloView_ViewCam camCommit 0;
		HeloView_CurrentZoom = call TRT_fnc_getZoom;
		diag_log format ["CurrentZoomm on ZoomOut: %1",HeloView_CurrentZoom];
	};
};
*/

_posChange = _this select 1;
_cameraPos = [(HeloView_newPos select 0), ((HeloView_newPos select 1) + (20 / _posChange)), ((HeloView_newPos select 2) + 2)];

HeloView_ViewCam camSetPos _cameraPos;
HeloView_ViewCam camCommit 0.2;