/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * Spawn_Intel
 *
 * Call back for the "killed" event on enemy ai. 10 percent chance to drop things
 **************************************************************************************/
private [ "_abovePos", "_case", "_marker", "_pos" ];

if ( random 100 > 95 ) then
{
	_pos = getPosATL (_this select 0);
	_case = "Land_File1_F" createVehicle [0,0,0];
	_case setPosATL _pos;
	
	_abovePos = [_pos select 0, _pos select 1, (_pos select 2) + 1.5];
	_marker = "Sign_Arrow_F" createVehicle [0,0,0];
	_marker setPosATL _abovePos;
	
	DGF_SideChatMessage = 1;
	PublicVariable "DGF_SideChatMessage";
};