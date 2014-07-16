/*
Author: tryteyker
Last revision: 2014-07-16
Credits to author(s) apply
*/

_coord = _this select 2;

HeloView_ViewCam camSetTarget _coord;
HeloView_ViewCam camCommit 0;
diag_log "Executing cam Target!";