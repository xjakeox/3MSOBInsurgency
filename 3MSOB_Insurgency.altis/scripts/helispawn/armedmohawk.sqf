_merlin = createVehicle ["I_Heli_Transport_02_F", (getMarkerPos "merlinpad"), [], 0, "CAN_COLLIDE"];
_merlin setdir 320;
_merlin animate ["door_back_R",1];
_merlingun1 = createVehicle ["B_HMG_01_F", (getMarkerPos "mgun1spawn"), [], 0, "CAN_COLLIDE"];
_merlingun1 attachto [_merlin,[0.45,2.2,-1.2]];
_merlingun1 setdir 90;
_merlingun1 addaction ["Reload HMG","scripts\helispawn\hmgload.sqf"];