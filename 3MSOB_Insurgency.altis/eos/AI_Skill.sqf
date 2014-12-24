// INFANTRY SKILL
// _InfskillSet = [
// 0.15,        // aimingAccuracy
// 0.35,        // aimingShake
// 0.4,        // aimingSpeed
// 0.3,         // spotDistance
// 0.2,        // spotTime
// 1,        // courage
// 1,        // reloadSpeed
// 1,        // commanding
// 1        // general
// ];

// INFANTRY SKILL
_InfskillSet = [
0.008, // aimingAccuracy 
0.008, // aimingShake 
0.008, // aimingSpeed 
0.005, // spotDistance 
0.005, // spotTime 
0.5, // courage 
0.5, // reloadSpeed
0.13, // commanding
0.1 // general
];


// ARMOUR SKILL
_ArmSkillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.4,         // spotDistance
0.4,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];


// LIGHT VEHICLE skill
_LigSkillSet = [
0.15,        // aimingAccuracy
0.25,        // aimingShake
0.4,        // aimingSpeed
0.2,         // spotDistance
0.2,        // spotTime
0.5,        // courage
0.5,        // reloadSpeed
0.5,        // commanding
0.5        // general
];


// HELICOPTER SKILL
_AIRskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.4,         // spotDistance
0.4,        // spotTime
0.5,        // courage
0.5,        // reloadSpeed
0.5,        // commanding
0.5        // general
];


// STATIC SKILL
_STAskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.4,         // spotDistance
0.4,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_InfskillSet];
server setvariable ["LIGskill",_InfskillSet];
server setvariable ["AIRskill",_InfskillSet];
server setvariable ["STAskill",_InfskillSet];