_lynx35gargoyle = createVehicle ["I_Heli_light_03_F", (getMarkerPos "gargoylepad"), [], 0, "CAN_COLLIDE"];
_lynx35gargoyle setdir 210;
_lynx35gargoyle lockCargo true;
_gargoylegun1 = createVehicle ["B_HMG_01_F", (getMarkerPos "ggun1spawn"), [], 0, "CAN_COLLIDE"];
_gargoylegun1 attachto [_lynx35gargoyle,[-0.65,3,0.4]]; 
_gargoylegun1 setdir 270;
_gargoylegun1 removemagazines "500Rnd_127x99_mag";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun1 addaction ["Reload HMG","scripts\helispawn\hmgload.sqf"];
_gargoylegun2 = createVehicle ["B_HMG_01_F", (getMarkerPos "ggun2spawn"), [], 0, "CAN_COLLIDE"];
_gargoylegun2 attachto [_lynx35gargoyle,[0.65,2.8,0.4]]; 
_gargoylegun2 setdir 90;
_gargoylegun2 removemagazines "500Rnd_127x99_mag";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addMagazine "500Rnd_127x99_mag_Tracer_Red";
_gargoylegun2 addaction ["Reload HMG","scripts\helispawn\hmgload.sqf"];
