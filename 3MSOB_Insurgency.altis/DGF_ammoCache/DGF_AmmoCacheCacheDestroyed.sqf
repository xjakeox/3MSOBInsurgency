/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * DGF_AmmoCacheCacheDestroyed.sqf
 *
 * Call back for the "killed" event on cache.
 **************************************************************************************/
 
private [ "_cache", "_cachePos", "_match", "_tmpArr" ];

_cache = _this;
_cachePos = getPosATL _cache;

//Remove Item from DGF_CacheList
_tmpArr = [ _cache ];
DGF_CacheList = DGF_CacheList - _tmpArr;
publicVariable "DGF_CacheList";

//Random Explosions, why not
while { round (random 3) != 1 } do
{
	"HelicopterExploSmall" createVehicle [ _cachePos select 0, _cachePos select 1, 0 ];
	sleep 3;
};

"HelicopterExploSmall" createVehicle [ _cachePos select 0, _cachePos select 1, 0 ];

//Broadcast this event to all clients
if ( count DGF_cacheList > 0 ) then
{
	DGF_SideChatMessage = 3;
}
else
{
	DGF_SideChatMessage = 4;
};

PublicVariable "DGF_SideChatMessage";