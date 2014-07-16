/*
Author: tryteyker
Last revision: 2014-07-16
Credits to author(s) apply
*/

_coord = _this select 2;
diag_log format ["Diag: %1",_coord];
/*
HeloView_ViewCam camSetTarget [_coord select 0, _coord select 1, 0];
HeloView_ViewCam camCommit 0;