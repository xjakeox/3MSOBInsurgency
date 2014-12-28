/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * Cache_Destroyed
 *
 * Call back for the "killed" event on cache.
 **************************************************************************************/

private [ "_cache", "_cachePos", "_match", "_tmpArr" ];

_cache = _this;
_cachePos = getPosATL _cache;
_tmpArr = [ _cache ];

cacheList = cacheList - _tmpArr;

while { round (random 3) != 1 } do
{
	"HelicopterExploSmall" createVehicle [ _cachePos select 0, _cachePos select 1, 0 ];
	sleep 3;
};

"HelicopterExploSmall" createVehicle [ _cachePos select 0, _cachePos select 1, 0 ];

if ( count cacheList > 0 ) then
{
	sideChatMessage = 3;
}
else
{
	sideChatMessage = 4;
};

publicVariable "sideChatMessage";
publicVariable "cacheList";