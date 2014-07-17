/*
Author: tryteyker
Last Revision: 2014-07-16
Credits to author(s) apply.
*/

_ctrl = _this select 0;
_sel = (_ctrl select 1); // _ctrl returns an array for some reason
_element = lbText [1503,_sel];
_selection = getText (configFile >> "CfgVehicles" >> typeOf (HeloView_newVehicle) >> _element);
diag_log format ["%1",_selection];
_modelPos = HeloView_newVehicle selectionPosition _selection;
_newTarget = HeloView_newVehicle modelToWorld _modelPos;
diag_log format ["%1, %2",_modelPos,_newTarget];
HeloView_ViewCam camSetTarget _newTarget;
//HeloView_ViewCam camSetPos [(_newTarget select 0) - 2, (_newTarget select 1) + 1, _newTarget select 2];
HeloView_ViewCam camCommit 0.2;