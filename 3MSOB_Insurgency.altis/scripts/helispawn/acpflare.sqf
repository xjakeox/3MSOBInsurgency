if ((vehicle player isKindof "I_Heli_light_03_unarmed_F") or (vehicle player isKindof "B_Heli_Light_01_F")) then
{
Flare = "F_40mm_White" createVehicle [getPos (vehicle player) select 0, getPos (vehicle player) select 1,0];
sleep 1;
}