if ((vehicle player isKindof "I_Heli_light_03_unarmed_F") or (vehicle player isKindof "B_Heli_Light_01_F")) then
{
Chemlight = "Chemlight_green" createVehicle [getPos (vehicle player) select 0, getPos (vehicle player) select 1,0.1];
sleep 1;
}