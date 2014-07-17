/*
Author: tryteyker
Last Revision: 2014-07-17
Credits to author(s) apply
*/

_ctrl = _this select 0;
_lbSel = _this select 1;

_text = lbText [1500,_lbSel];
diag_log format ["%1",_text];
_hiddenSel = getArray (configFile >> "CfgVehicles" >> typeOf (HeloView_vehicle) >> "hiddenSelectionsTextures");
HeloView_newVehicle setObjectTextureGlobal [0,_text];