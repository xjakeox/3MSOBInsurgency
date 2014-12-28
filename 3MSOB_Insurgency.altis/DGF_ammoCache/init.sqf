/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * init.sqf
 *
 * (Hopefully an easy implementation of ArmA2's Insurgency ammo cache feature
 **************************************************************************************/
 //TREATED LIKE A CONSTANT
 RADIUS_MAX = 500;
 
 //GLOBAL VARIABLE
 cacheList = [];
 sideChatMessage = 0;
 DGF_isReady = false;
 
 //PRIVATE STUFF
 private [ "_building", "_cache", "_count", "_loc", "_match", "_mkr", "_srcArr", "_tmpArr" ];
 _srcArr = _this select 0;
 _tmpArr = [];
 
 //TODO: Make configurable with parameters?
 _count = 7;
 
 //Server only... clients get out of here
 if ( isServer ) then
 {
	while {count cacheList < _count} do
	{
		_match = false;
		_loc = _srcArr select ( round(random count _srcArr) );
	
		{
			if ( _loc == _x ) then { _match = true; };
		} forEach _tmpArr;
	
		if ( !_match ) then
		{
			_cache = "Box_IND_AmmoVeh_F" createVehicle [0,0,0];
			_building = nearestBuilding getMarkerPos _mkr;
			_cache setPosATL ( _building buildingPos 1 );
		
			cacheList set[count cacheList, _cache ];
			_tmpArr set[count _tmpArr, _loc];
			
			_cache addEventHandler[ "killed", {_this select 0 execVM "DGF_ammoCache\functions\Cache_Destroyed.sqf"} ];
		};
	};
	hint format [ "cache positions: %1", cacheList ];
	DGF_isReady = true;
};

waitUntil { DGF_isReady };

if ( local player ) then
{
	[ ] execVM "DGF_ammoCache\clientLoop.sqf";
};

"sideChatMessage" addPublicVariableEventHandler
{
	sideChatMessage call displaySideMessage;
};
		
	
displaySideMessage =
{
	private ["_GHint"];
	_GHint = "";
		
	switch ( _this ) do
	{
		case 1:
		{
			_GHint = "Intel has been dropped. Find it to get information on enemy ammo caches.";
		};
		
		case 2:
		{
			_GHint = "Intel has been found. Map has been updated with possible cache spots.";
		};
		
		case 3:
		{
			_Ghint = format [ "Enemy cache has been destroy, %1 more remaining.", count cacheList ];
		};
		
		case 4:
		{
			_Ghint = "All ammo caches have been eliminated. Congratulations";
		};
	};
		
	player sideChat _GHint;
	
	if ( _this == 4 ) then
	{
		sleep 10;
		"end1" call BIS_fnc_endMission;
	};
};