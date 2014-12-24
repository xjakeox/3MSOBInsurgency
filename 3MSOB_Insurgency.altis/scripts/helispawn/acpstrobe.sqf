if ((vehicle player isKindof "I_Heli_light_03_unarmed_F") or (vehicle player isKindof "B_Heli_Light_01_F")) then
{
Strobe = "B_IRStrobe" createVehicle [getPos (vehicle player) select 0, getPos (vehicle player) select 1,0];
Strobe1 = "B_IRStrobe" createVehicle [getPos (vehicle player) select 0, getPos (vehicle player) select 1,0];
sleep 1;
lase = "LaserTargetW" createVehicle [getPos (vehicle player) select 0, getPos (vehicle player) select 1,0];
lase attachto [Strobe1,[0,0,1]];
[lase,time,false,false];
sleep 300; 
deletevehicle Strobe1;
deletevehicle Lase;
}