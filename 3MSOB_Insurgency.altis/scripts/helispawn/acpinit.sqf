//Setting up Hotkeys for ACP
waituntil {!(IsNull (findDisplay 46))};
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 210) then {player execVM 'scripts\helispawn\acpsmoke.sqf'}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 199) then {player execVM 'scripts\helispawn\acpflare.sqf'}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 201) then {player execVM 'scripts\helispawn\acpstrobe.sqf'}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 209) then {player execVM 'scripts\helispawn\acpchem.sqf'}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 207) then {player execVM 'scripts\helispawn\acpflareline.sqf'}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 211) then {player execVM 'scripts\helispawn\acpscreen.sqf'}"];