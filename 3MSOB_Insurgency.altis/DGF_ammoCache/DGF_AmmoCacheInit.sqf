/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * DGF_AmmoCacheInit.sqf
 *
 * (Hopefully an easy implementation of ArmA2's Insurgency ammo cache feature
 **************************************************************************************/
//Stored Functions
Display_Intel = compile preprocessfilelinenumbers "DGF_ammoCache\DGF_AmmoCacheDisplayIntel.sqf";

//TREATED LIKE A CONSTANT
RADIUS_MAX = 500;
 
//PRIVATE STUFF
private [ "_building", "_cache", "_count", "_loc", "_match", "_srcArr", "_tmpArr" ];
_srcArr = _this select 0;
_tmpArr = [];

//TODO: Make configurable with parameters?
_count = 7;
 
//Server only... clients get out of here
if ( isServer ) then
{
	// Define All Public Variables
	DGF_CacheList		= [];
	DGF_IntelCollected 	= [];
	DGF_IsReady 		= false;
	DGF_SideChatMessage = 0;
	
	PublicVariable "DGF_CacheList";
	PublicVariable "DGF_IntelCollected";
	PublicVariable "DGF_IsReady";
	PublicVariable "DGF_SideChatMessage";
	
	while {count DGF_CacheList < _count} do
	{
		_match = false;
		_loc = _srcArr select ( round(random count _srcArr - 1) );
	
		{
			if ( _loc == _x ) then { _match = true; };
		} forEach _tmpArr;
	
		if ( !_match ) then
		{
			_cache = "Box_IND_AmmoVeh_F" createVehicle [0,0,0];
			_building = nearestBuilding getMarkerPos _loc;
			_cache setPosATL ( _building buildingPos 1 );
		
			DGF_CacheList set [count DGF_CacheList, _cache];
			_tmpArr set[count _tmpArr, _loc];
			
			_cache addEventHandler[ "killed", {_this select 0 execVM "DGF_ammoCache\DGF_AmmoCacheCacheDestroyed.sqf"} ];
		};
	};
	
	DGF_IsReady = true;
	PublicVariable "DGF_IsReady";
	
	//Handles Event for displaying things
	"DGF_IntelCollected" addPublicVariableEventHandler
	{
		{
			//Mark Intel on Map
			call Display_Intel;
			
			//Remove Intel Collected from the stack
			DGF_IntelCollected = DGF_IntelCollected - [_x];
			//Sync With Clients
			
			publicVariable "DGF_IntelCollected";
		} forEach DGF_IntelCollected;
	};
};

waitUntil { DGF_IsReady };

if ( local player ) then
{
	[ ] execVM "DGF_ammoCache\DGF_AmmoCacheClientLoop.sqf";
};