#include "macro.sqf"
_item = _this select 0;
_class = _item call ASORGS_fnc_GetClass;
ASORGS_CurrentInventory set [GSVI_Insignia, _class];
