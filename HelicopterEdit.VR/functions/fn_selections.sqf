/*
Author: tryteyker
Last Revision: 2014-07-17
Credits to author(s) apply
*/

_sel = _this select 0;

switch _sel do {
	case "campoints":
	{
		["selectionHRotorStill","selectionVRotorStill"]
	};
	case "camo":
	{
		getArray(configFile >> "CfgVehicles" >> typeof(vehicle player) >> "hiddenSelectionsTextures")
	};
};