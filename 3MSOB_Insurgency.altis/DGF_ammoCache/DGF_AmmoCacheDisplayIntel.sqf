/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Ammo Cache
 * Spawn_Intel
 *
 * Displays a hint on the map
 **************************************************************************************/

private [ "_cache", "_cachePos", "_i", "_mkr", "_mkrPos", "_mkrX", "_mkrY", "_radius", "_range", "_sign", "_sign2" ];

_index = round( random( count DGF_CacheList - 1));
_cache = DGF_CacheList select _index;
_cachePos = getPosATL _cache;
_i 	   = 0;
_sign  = 1;
_sign2 = 1;

while{ (getMarkerPos format["%1intel%2", _cache, _i] select 0) != 0 } do
{ 
	_i = _i + 1; 
};

//Randomize things
if (random 100 > 50) then { _sign = -1; }; 
if (random 100 > 50) then { _sign2 = -1; }; 
_radius = round (random RADIUS_MAX);

if (_radius < 50) then { _radius = 50; };

_mkrX = (_cachePos select 0) + (_sign * _radius);
_mkrY = (_cachePos select 1) + (_sign2 * _radius);

_mkrPos =
[
	_mkrX,
	_mkrY
]; 

//Display the marker on the map
_mkr = createMarker[format["%1intel%2", _cache, _i], _mkrPos]; 
_mkr setMarkerType "hd_objective";
_range  = round sqrt(_radius^2*2);
_range  = _range - (_range % 50);
_mkr setMarkerText format["%1m", _range];
_mkr setMarkerColor "ColorRed"; 	
_mkr setMarkerSize [0.5,0.5];

//Notify all clients of new event
DGF_SideChatMessage = 2;
PublicVariable "DGF_SideChatMessage";