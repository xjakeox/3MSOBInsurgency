/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * Spawn_Intel
 *
 * Call back for the "killed" event on enemy ai. 10 percent chance to drop things
 **************************************************************************************/
private [ "_message" ];

switch ( DGF_SideChatMessage ) do
{
	case 1:
	{
		_message = "Intel has been dropped. Find it to get information on enemy ammo caches.";
	};
	
	case 2:
	{
		_message = "Intel has been found. Map has been updated with possible cache spots.";
	};
	
	case 3:
	{
		_message = format [ "Enemy cache has been destroy, %1 more remaining.", count DGF_cacheList ];
	};
	
	case 4:
	{
		_message = "All ammo caches have been eliminated. Congratulations";
	};
};
		
player sideChat _message;
	
if ( DGF_SideChatMessage == 4 ) then
{
	sleep 10;
	"end1" call BIS_fnc_endMission;
};
