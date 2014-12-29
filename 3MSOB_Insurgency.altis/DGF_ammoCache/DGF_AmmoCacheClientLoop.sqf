/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * clientLoop.sqf
 *
 * For clients to check position of intel drops
 **************************************************************************************/
Display_Chat = compile preprocessfilelinenumbers "DGF_ammoCache\functions\Get_SideChatMessage.sqf";

"DGF_sideChatMessage" addPublicVariableEventHandler
{
	call Display_Chat;
};

while {true} do
{
	private [ "_cache", "_case", "_cases", "_index", "_marker", "_markers" ];
    
	_cases = nearestObjects[ getPosATL player, [ "Land_File1_F" ], 3 ];
	if ( count _cases > 0 ) then
	{
		_case = _cases select 0;
		if (!isNull _case) then
		{
			deleteVehicle _case;
			DGF_IntelCollected set [ count DGF_IntelCollected, 0 ];
			publicVariableServer "DGF_IntelCollected";
		};
	};
	
	_markers = nearestObjects[ getPosATL player, [ "Sign_Arrow_F" ], 3 ];
	if ( count _markers > 0 ) then
	{
		_marker = _markers select 0;
		if (!isNull _marker) then
		{
			deleteVehicle _marker;
		};
	};
	
	sleep 2;
}