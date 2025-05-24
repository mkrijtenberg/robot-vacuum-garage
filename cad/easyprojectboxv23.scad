/*******************************************************************************
TITLE:
Easy box for electronic projects by pbtec

LICENSE:
Licensed under the Creative Commons - Attribution - Non-Commercial - Share Alike

DESCRIPTION:
Use Openscad customizer (Menu Window/unselect "hide customizer") to customize this box
I am aware that sometimes, when using too big or too small parameters, there are some rendering issues.
To prevent such issues, change only one parameter at once and check the result.

Customize:
- Use the first 4 modules to add objects or to cut out holes (there are already a few examples, uncomment them to use)
- Export the stl file from Openscad (F6 then F7). Then Import the stl file into your best known 3d program to make holes.
- You can also make the holes afterwards with the drilling machine.

Hope you can use it for you projects
Let me see your prints, and remakes and pls do not forget to press the like button

use https://paypal.me/pbtec if you want to spend me a coold beer. Thanks in advance :-)

AUTHOR:
pbtec / pb-tec.ch

VERSION:
V   KZZ DATE     COMMENT
1.0 pb  31.08.22 First Version to share
2.0 pb  08.07.23 Optimized Version with more customizations
2.1 pb  11.12.23 Some updates
2.2 pb  27.04.24 Final Version to share
2.3 pb  10.06.24 Size more granular possible
*******************************************************************************/

/* [View settings] */
// Quality variable (40 fast / 150 for creating printable stl files)
$fn                       =            150 ; // [10:1:400]
// Quality variable interior parts (due to performance matter I would not go over 50)
$fnInterior               =            100 ; // [10:1:200]
Show                      =              2 ; // [0:Body and lid, 1:Body only, 2:lid only]
// Distance between Body and lid 10mm or more
Dist                      =             10 ;
// unselected=Body centered, selected=lid centered
Position                  =          true ;
/* [Box settings] */
// Size for the box x,y,z
Size                      =   [140,120,45] ;
// Corner rounding --> !!! Rounding must be same or bigger than WallThick, and not bigger than the half of the smaler side -1. Otherwise there are some rendering issues
Rounding                  =            5.0 ; //[1:1:100]
// Wall and bottom thickness
WallThick                 =            3.0 ; //[1:0.1:10]
// Lid thickness (only lid)
LidThick                  =            3.0 ; //[1:0.1:10]
// Gap between base and lid to make the lid a bit smaler to fit better (depends on your 3d printer quality) default 0.2mm
Gap                       =            0.2 ; //[0.01:0.01:1]
// Hole diameter in lid for Screw
/* [Screw / hot melt copper nut settings] */
// Size for the hole in the lid
HoleDiaLid                =            3.2 ; //[1:0.1:10]
// Hole diameter for thread or hot melt copper nut (thread 2.2 for 2.9mm / 2.8 for 3.5mm / 3.2 for 3.9mm Screw)
HoleDiaThread             =            3.2 ; //[1:0.1:10]
// Screw or hot melt nut Hole deepness (deepness in the Body/Cylinder). If too big, through hole possible
HoleDeepness              =           12.0 ; //[1:0.1:200]
// Cylinder dia for the Screw
ScrewCylinderDia          =           12.0 ; //[4:0.1:20]
// Add additional holes on x side
AddXScrew                 =           true ;
// Add additional holes on y side
AddYScrew                 =           true ;
// For stability you can connect the cylinder to the wall
ConnectCylinder           =           true ;
// Add chamfer to the bottom of the cylinder (depends on the HoleDeepness parameter). Use only when the cylinder is connected with the wall or when ConnectCylinder is activated
AddChamfer                =           true ;
//  Chamfer cut angle. Default 22. I would not go bigger than 45 to prevent printing issues, besides you use support
ChamferAngle              =             35 ;
// Select the using screw head
HoleType                  =              1 ; // [0:Hole only, 1:Countersink, 2:Normal screw head]
// CounterSink screw head diameter (use measured value) --> 5.5 for M3
CSHeadDia                 =            5.5 ; //[1:0.1:20]
// NormalScrew: Head diameter, screw head high (The hole will be the size you enter)
NSHeadSize                =        [6,2.5] ; //[1:0.1:20]
// Side hole distance from the outside of the body. Check the holes position on the lid
HolePos                   =            7.0 ; //[3:0.1:20]


/* [PCB body mounting cylinders 1] */
// Activate PCB mount cylinders on body
PCB_BodyMountCylActive    =          false ;
// Cylinder high
PCB_BodyCylHigh           =           14.0 ;  //[1:0.1:30]
// Cylinder diameter
PCB_BodyCylDia            =           12.0 ;  //[1:1:20]
// Cylinder thread hole (for screws or hot melt copper nut)
PCB_BodyCylHoleDia        =            3.8 ; //[1:0.1:15]

// X distance beteween the holes
PCB_BodyX_Dist            =           30.0 ;  //[1:0.1:1000]
// Y distance beteween the holes
PCB_BodyY_Dist            =           50.0 ;  //[1:0.1:1000]
// PCB X direction offset (+/-)
PCB_BodyX_offset          =          -30.0 ;  //[-1000:0.1:1000]
// PCB Y direction offset (+/-)
PCB_BodyY_offset          =            0.0 ;  //[-1000:0.1:1000]

/* [PCB body mounting cylinders 2] */
// Activate PCB mount cylinders on body
PCB_Body2MountCylActive   =          false ;
// Cylinder high
PCB_Body2CylHigh          =            8.0 ;  //[1:0.1:30]
// Cylinder diameter
PCB_Body2CylDia           =            8.0 ;  //[1:1:20]
// Cylinder thread hole (for screws or hot melt copper nut)
PCB_Body2CylHoleDia       =            3.8 ; //[1:0.1:15]

// X distance beteween the holes
PCB_Body2X_Dist           =           25.0 ; //[1:0.1:1000]
// Y distance beteween the holes
PCB_Body2Y_Dist           =           30.0 ; //[1:0.1:1000]
// PCB X direction offset (+/-)
PCB_Body2X_offset         =           30.0 ; //[-1000:0.1:1000]
// PCB Y direction offset (+/-)
PCB_Body2Y_offset         =           18.0 ; //[-1000:0.1:1000]

/* [PCB Lid mounting cylinders 1. Turn object upside down to see it ;-)] */
// Activate PCB mount cylinders on Lid
PCB_LidMountCylActive     =          false ;
// Cylinder high
PCB_LidCylHigh            =            8.0 ;  //[1:0.1:30]
// Cylinder diameter
PCB_LidCylDia             =            7.0 ;  //[1:1:20]
// Cylinder thread hole (for screws or hot melt copper nut)
PCB_LidCylHoleDia         =            3.8 ; //[1:0.1:15]

// X distance beteween the holes
PCB_LidX_Dist             =           30.0 ; //[1:0.1:1000]
// Y distance beteween the holes
PCB_LidY_Dist             =           50.0 ; //[1:0.1:1000]
// PCB X direction offset (+/-)
PCB_LidX_offset           =           30.0 ; //[-1000:0.1:1000]
// PCB Y direction offset (+/-)
PCB_LidY_offset           =            0.0 ; //[-1000:0.1:1000]

/* [PCB Lid mounting cylinders 2. Turn object upside down to see it ;-)] */
// Activate PCB mount cylinders on Lid
PCB_Lid2MountCylActive     =         false ;
// Cylinder high
PCB_Lid2CylHigh            =          12.0 ;  //[1:0.1:30]
// Cylinder diameter
PCB_Lid2CylDia             =          10.0 ;  //[1:1:20]
// Cylinder thread hole (for screws or hot melt copper nut)
PCB_Lid2CylHoleDia         =           4.6 ; //[1:0.1:15]

// X distance beteween the holes
PCB_Lid2X_Dist             =          40.0 ; //[1:0.1:1000]
// Y distance beteween the holes
PCB_Lid2Y_Dist             =          30.0 ; //[1:0.1:1000]
// PCB X direction offset (+/-)
PCB_Lid2X_offset           =         -30.0 ; //[-1000:0.1:1000]
// PCB Y direction offset (+/-)
PCB_Lid2Y_offset           =          20.0 ; //[-1000:0.1:1000]

/* [Control cuts] */
HorizontalCut             =          false ;
VerticalCut               =          false ;
DiagonalCut               =          false ;

/* [Project] */
Buy_PBTEC_a_Beer          =          false ;
// M A I N

if (Buy_PBTEC_a_Beer) {color("gold") translate([0,-Size.y/2,Size.z*2+35]) rotate([90,0,90]) linear_extrude(10) text(str("Thanks, highly appreciated!"),halign = "center", size= 22,font="Liberation Sans:style=Bold");
color("gold") translate([0,-Size.y/2,Size.z*2]) rotate([90,0,90]) linear_extrude(10) text(str("paypal.me/pbtec"),halign = "center", size= 22,font="Liberation Sans:style=Bold");}
//paypal.me/pbtec  Thanks!
color("SkyBlue") EasyProjectBox ();
// M O D U L E S
module LidAdd () // Add here your additional shapes to the lid
{
    // Sample lid  adds
    // PCB Cylinder with hole for mounting PCB: Uncomment and copy the line for multiple cylinders. Customize height (fist Value), diameter (2nd value) and hole diameter (3rd). Next values ar for the position (x and y)
        // Cyl= [22,10,5,0,0]; translate([Cyl[3],Cyl[4],Cyl[0]/2-Cyl[0]]) difference(){cylinder(h=Cyl[0],d=Cyl[1],center = true);cylinder(h=Cyl[0]+0.04,d=Cyl[2],center = true);}
}
module LidCut () // Add here your lid cuts
{
    // Sample Lid cuts, uncomment (remove "//") to activate, copy/paste the lines if you need more than one
    // Hole:  Use the first value for the size, and the next two to move the object x and y wise.
        //LidHole=[20,-40,0]; translate([LidHole[1],LidHole[2],-0.02])cylinder(h=WallThick+0.1,d=LidHole[0],center = false); // --> Parameters: diameter, x-offset, y-offset
    // Window: Use the first two values for the size, and the next two for the x and y position
    
    num_lanes = 12;
    for (i = [0 : num_lanes - 1]) {   
       LidWindow= [3,80,-44 + (i * 8),0];  translate([LidWindow[2],LidWindow[3],WallThick/2+0.02]) cube([LidWindow[0],LidWindow[1],WallThick+0.1],center=true); // --> Parameters: wide, hight, x-offset, y-offset
    }
}
module BodyAdd () // Add here your additional shapes to the Body
{
    // Sample body  adds
    // PCB Cylinder with hole for mounting PCB: Uncomment and copy the line for multiple cylinders. Customize height (fist Value), diameter (2nd value) and hole diameter (3rd). Next values ar for the position (x and y)
        // Cyl= [22,10,5,0,0]; translate([Cyl[3],Cyl[4],Cyl[0]/2+WallThick]) difference(){cylinder(h=Cyl[0],d=Cyl[1],center = true);cylinder(h=Cyl[0]+0.04,d=Cyl[2],center = true);}
}
module BodyCut () // Add here your body cuts
{
    // Sample side holes. Copy the line if more than one hole is needed. Works only on flat sides and not on rounded. Customize the size and the position
    // --> Parameters: diameter, vertical high, horizontal offset
        //Hole1X=[20,20,-20]; translate([Size.x/2-WallThick-0.02,Hole1X[2],Hole1X[1]]) rotate([0,90,0]) cylinder(h=WallThick+0.04,d=Hole1X[0],center = false);
        //Hole2X=[10,30,-20]; translate([-Size.x/2-0.02,Hole2X[2],Hole2X[1]]) rotate([0,90,0]) cylinder(h=WallThick+0.04,d=Hole2X[0],center = false);
        //Hole1Y=[40,25,-25]; translate([Hole1Y[2],-Size.y/2-0.02,Hole1Y[1]]) rotate([0,90,90]) cylinder(h=WallThick+0.04,d=Hole1Y[0],center = false);
        //Hole2Y=[ 5,25,-25]; translate([Hole2Y[2],Size.y/2-WallThick-0.02,Hole2Y[1]]) rotate([0,90,90]) cylinder(h=WallThick+0.04,d=Hole2Y[0],center = false);

    // Sample side cube cuts. Copy the line if more than one window is need. Works only on flat sides and not on rounded. Customize the size and the position
    // --> Parameters: wide, hight, vertical high, horizontal offset
        //Window1X=[35,20,25,10]; translate([-WallThick/2+Size.x/2,Window1X[3],Window1X[2]]) cube([WallThick+0.04,Window1X[0],Window1X[1]],center=true);
        //Window2X=[35,10,10,10]; translate([WallThick/2-Size.x/2,Window2X[3],Window2X[2]]) cube([WallThick+0.04,Window2X[0],Window2X[1]],center=true);
        Window1Y=[35,10,15,30]; translate([Window1Y[3],-WallThick/2+Size.y/2,Window1Y[2]]) cube([Window1Y[0],WallThick+0.04,Window1Y[1]],center=true);
        //Window2Y=[35,10,28,25]; translate([Window2Y[3],WallThick/2-Size.y/2,Window2Y[2]]) cube([Window2Y[0],WallThick+0.04,Window2Y[1]],center=true);

    // Sample body bottom cuts
        //BottomHole=[20,-30,20]; translate([BottomHole[1],BottomHole[2],-0.02])cylinder(h=WallThick+0.1,d=BottomHole[0],center = false); // --> Parameters: diameter, x-offset, y-offset
        //BottomWindow= [20,40,0,0];  translate([BottomWindow[2],BottomWindow[3],WallThick/2+0.02]) cube([BottomWindow[0],BottomWindow[1],WallThick+0.1],center=true); // --> Parameters: wide, hight, x-offset, y-offset
}

// M O D U L E S (do not change anything from here) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

module PCB_BodyMount ()  {
    color("green") if (PCB_BodyMountCylActive){
        translate([-PCB_BodyX_Dist/2+PCB_BodyX_offset,-PCB_BodyY_Dist/2+PCB_BodyY_offset,PCB_BodyCylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_BodyCylHigh,d=PCB_BodyCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_BodyCylHigh+0.04,d=PCB_BodyCylHoleDia,center = true);}
        translate([+PCB_BodyX_Dist/2+PCB_BodyX_offset,-PCB_BodyY_Dist/2+PCB_BodyY_offset,PCB_BodyCylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_BodyCylHigh,d=PCB_BodyCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_BodyCylHigh+0.04,d=PCB_BodyCylHoleDia,center = true);}
        translate([-PCB_BodyX_Dist/2+PCB_BodyX_offset,PCB_BodyY_Dist/2+PCB_BodyY_offset,PCB_BodyCylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_BodyCylHigh,d=PCB_BodyCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_BodyCylHigh+0.04,d=PCB_BodyCylHoleDia,center = true);}
        translate([+PCB_BodyX_Dist/2+PCB_BodyX_offset,PCB_BodyY_Dist/2+PCB_BodyY_offset,PCB_BodyCylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_BodyCylHigh,d=PCB_BodyCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_BodyCylHigh+0.04,d=PCB_BodyCylHoleDia,center = true);}
    }
    color("blue") if (PCB_Body2MountCylActive){
        translate([-PCB_Body2X_Dist/2+PCB_Body2X_offset,-PCB_Body2Y_Dist/2+PCB_Body2Y_offset,PCB_Body2CylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_Body2CylHigh,d=PCB_Body2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Body2CylHigh+0.04,d=PCB_Body2CylHoleDia,center = true);}
        translate([+PCB_Body2X_Dist/2+PCB_Body2X_offset,-PCB_Body2Y_Dist/2+PCB_Body2Y_offset,PCB_Body2CylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_Body2CylHigh,d=PCB_Body2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Body2CylHigh+0.04,d=PCB_Body2CylHoleDia,center = true);}
        translate([-PCB_Body2X_Dist/2+PCB_Body2X_offset,PCB_Body2Y_Dist/2+PCB_Body2Y_offset,PCB_Body2CylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_Body2CylHigh,d=PCB_Body2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Body2CylHigh+0.04,d=PCB_Body2CylHoleDia,center = true);}
        translate([+PCB_Body2X_Dist/2+PCB_Body2X_offset,PCB_Body2Y_Dist/2+PCB_Body2Y_offset,PCB_Body2CylHigh/2+WallThick]) difference(){cylinder($fn=$fnInterior,h=PCB_Body2CylHigh,d=PCB_Body2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Body2CylHigh+0.04,d=PCB_Body2CylHoleDia,center = true);}
    }
}

module PCB_LidMount ()  {
    color("orange") if (PCB_LidMountCylActive){
        translate([-PCB_LidX_Dist/2+PCB_LidX_offset,-PCB_LidY_Dist/2+PCB_LidY_offset,-PCB_LidCylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_LidCylHigh,d=PCB_LidCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_LidCylHigh+0.04,d=PCB_LidCylHoleDia,center = true);}
        translate([+PCB_LidX_Dist/2+PCB_LidX_offset,-PCB_LidY_Dist/2+PCB_LidY_offset,-PCB_LidCylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_LidCylHigh,d=PCB_LidCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_LidCylHigh+0.04,d=PCB_LidCylHoleDia,center = true);}
        translate([-PCB_LidX_Dist/2+PCB_LidX_offset,PCB_LidY_Dist/2+PCB_LidY_offset,-PCB_LidCylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_LidCylHigh,d=PCB_LidCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_LidCylHigh+0.04,d=PCB_LidCylHoleDia,center = true);}
        translate([+PCB_LidX_Dist/2+PCB_LidX_offset,PCB_LidY_Dist/2+PCB_LidY_offset,-PCB_LidCylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_LidCylHigh,d=PCB_LidCylDia,center = true);cylinder($fn=$fnInterior,h=PCB_LidCylHigh+0.04,d=PCB_LidCylHoleDia,center = true);}
    }
}

module PCB_Lid2Mount ()  {
    color("orange") if (PCB_Lid2MountCylActive){
        translate([-PCB_Lid2X_Dist/2+PCB_Lid2X_offset,-PCB_Lid2Y_Dist/2+PCB_Lid2Y_offset,-PCB_Lid2CylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh,d=PCB_Lid2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh+0.04,d=PCB_Lid2CylHoleDia,center = true);}
        translate([+PCB_Lid2X_Dist/2+PCB_Lid2X_offset,-PCB_Lid2Y_Dist/2+PCB_Lid2Y_offset,-PCB_Lid2CylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh,d=PCB_Lid2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh+0.04,d=PCB_Lid2CylHoleDia,center = true);}
        translate([-PCB_Lid2X_Dist/2+PCB_Lid2X_offset,PCB_Lid2Y_Dist/2+PCB_Lid2Y_offset,-PCB_Lid2CylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh,d=PCB_Lid2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh+0.04,d=PCB_Lid2CylHoleDia,center = true);}
        translate([+PCB_Lid2X_Dist/2+PCB_Lid2X_offset,PCB_Lid2Y_Dist/2+PCB_Lid2Y_offset,-PCB_Lid2CylHigh/2]) difference(){cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh,d=PCB_Lid2CylDia,center = true);cylinder($fn=$fnInterior,h=PCB_Lid2CylHigh+0.04,d=PCB_Lid2CylHoleDia,center = true);}
    }
}

module Box () {
    TrueValue2=WallThick; FalseValue2=Rounding; test2=Rounding<WallThick; Rounding=test2? TrueValue2 : FalseValue2 ; // if Rounding is < WallThick set Rounding to WallThick (to avoid rendering errors)
    TrueValue=HolePos; FalseValue=(sqrt(2)*Rounding-Rounding)/sqrt(2)+HolePos/sqrt(2); test =WallThick==Rounding; HolePosCorner = test ? TrueValue : FalseValue; // Calculate the Corner Cylinder position when case is rounded
    color("green")difference(){
        union(){
            if(Show!=2){
                difference(){
                    translate([0,0,Size.z/2]) RoundedCube(Size, Rounding,$fn); // Body
                    translate([0,0,Size.z/2+WallThick/2+0.03]) RoundedCube([Size.x-WallThick*2,Size.y-WallThick*2,Size.z-WallThick], Rounding-WallThick,$fnInterior); // Body cut
                    translate([0,0,Size.z-LidThick/2-Gap/2+0.04]) RoundedCube([Size.x-WallThick,Size.y-WallThick,LidThick+Gap], Rounding-WallThick/2,$fnInterior); // Lid cut
                }
            }
            if (Show!=1){
                translate([Gap/4,-Size.y-Dist,LidThick/2+0.02]) RoundedCube([Size.x-WallThick-2*Gap,Size.y-WallThick-2*Gap,LidThick], Rounding-WallThick/2,$fn);
                translate([0,-Size.y-Dist,0]) LidAdd ();
                translate([0,-Size.y-Dist,0]) PCB_LidMount();
                translate([0,-Size.y-Dist,0]) PCB_Lid2Mount();
            } // lid
            if (Show!=2){
                for(x=[Size.x/2-HolePosCorner,-Size.x/2+HolePosCorner],y=[Size.y/2-HolePosCorner,-Size.y/2+HolePosCorner])
                {
                    if (x>0 && y>0){
                        translate([x,y,Size.z/2-LidThick/2-Gap/2]) difference(){
                            union(){
                                rotate([0,0,0]) ThreadCylinder ();
                                if (ConnectCylinder){ rotate([0,0,-45]) translate([0,HolePos/2,0]) cube([ScrewCylinderDia-0.02,HolePos,Size.z-LidThick-Gap],center=true);}
                            }
                            if (AddChamfer) {
                                rotate([0,0,45]) translate([-ScrewCylinderDia/2,0,Size.z/2-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,0]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                                translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                                cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);
                    }}}}

                    if (x>0 && y<0){
                            translate([x,y,Size.z/2-LidThick/2-Gap/2]) difference(){
                            union(){
                                rotate([0,0,0]) ThreadCylinder ();
                                if (ConnectCylinder){ rotate([0,0,225]) translate([0,HolePos/2,0]) cube([ScrewCylinderDia-0.02,HolePos,Size.z-LidThick-Gap],center=true);}
                            }
                            if (AddChamfer) {
                                rotate([0,0,315]) translate([-ScrewCylinderDia/2,0,Size.z/2-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,0]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                                translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                                cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);
                    }}}}


                    if (x<0 && y>0){
                            translate([x,y,Size.z/2-LidThick/2-Gap/2]) difference(){
                            union(){
                                rotate([0,0,0]) ThreadCylinder ();
                                if (ConnectCylinder){ rotate([0,0,45]) translate([0,HolePos/2,0]) cube([ScrewCylinderDia-0.02,HolePos,Size.z-LidThick-Gap],center=true);}
                            }
                            if (AddChamfer) {
                                rotate([0,0,135]) translate([-ScrewCylinderDia/2,0,Size.z/2-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,0]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                                translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                                cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);
                    }}}}


                    if (x<0 && y<0){
                            translate([x,y,Size.z/2-LidThick/2-Gap/2]) difference(){

                            union(){
                                rotate([0,0,0]) ThreadCylinder ();
                                if (ConnectCylinder){ rotate([0,0,135]) translate([0,HolePos/2,0]) cube([ScrewCylinderDia-0.02,HolePos,Size.z-LidThick-Gap],center=true);}
                            }
                            if (AddChamfer) {
                                rotate([0,0,225]) translate([-ScrewCylinderDia/2,0,Size.z/2-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,0]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                                translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                                cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);
                    }}}}

                }
                BodyAdd ();
                PCB_BodyMount(); // Cylinders for screw thread

                if (AddXScrew) { //2 Cylinder for screw thread x
                    difference(){
                        union(){
                            translate([0,-Size.y/2+HolePos,Size.z/2-LidThick/2-Gap/2])  ThreadCylinder ();
                            translate([0,Size.y/2-HolePos,Size.z/2-LidThick/2-Gap/2]) ThreadCylinder ();
                            if (ConnectCylinder)
                            {
                                translate([0,Size.y/2-(HolePos-WallThick)/2-WallThick,(Size.z-LidThick-Gap)/2]) cube([ScrewCylinderDia-0.02,HolePos-WallThick,Size.z-LidThick-Gap],center=true);
                                translate([0,-Size.y/2+(HolePos-WallThick)/2+WallThick,(Size.z-LidThick-Gap)/2]) cube([ScrewCylinderDia-0.02,HolePos-WallThick,Size.z-LidThick-Gap],center=true);
                            }
                        }
                        if (AddChamfer)
                        {
                            translate([0,Size.y/2-HolePos-ScrewCylinderDia/2,Size.z-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,90]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                            translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);}
                            translate([0,-Size.y/2+HolePos+ScrewCylinderDia/2,Size.z-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,270]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference()
                            {
                                translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                                cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);
                            }
                        }
                    }
                }
                if (AddYScrew) { //2 Cylinder for screw thread y
                    difference(){
                    union() {
                            translate([Size.x/2-HolePos,0,Size.z/2-LidThick/2-Gap/2]) ThreadCylinder ();
                            translate([-Size.x/2+HolePos,0,Size.z/2-LidThick/2-Gap/2]) ThreadCylinder ();
                            if (ConnectCylinder)
                            {
                                translate([Size.x/2-(HolePos-WallThick)/2-WallThick,0,(Size.z-LidThick-Gap)/2]) cube([HolePos-WallThick,ScrewCylinderDia-0.02,Size.z-LidThick-Gap],center=true);
                                translate([-Size.x/2+(HolePos-WallThick)/2+WallThick,0,(Size.z-LidThick-Gap)/2]) cube([HolePos-WallThick,ScrewCylinderDia-0.02,Size.z-LidThick-Gap],center=true);
                            }
                        }
                        if (AddChamfer)
                        {
                            translate([Size.x/2-HolePos-ScrewCylinderDia/2,0,Size.z-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,0]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference(){
                            translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia,center = true);}
                            translate([(-Size.x/2)+HolePos+(ScrewCylinderDia)/2,0,Size.z-LidThick-Gap-HoleDeepness]) rotate([180,-ChamferAngle,180]) translate([ScrewCylinderDia/2,0,Size.z/2]) difference()
                            {
                               translate([-Size.z/2,0,0]) cube([Size.z,ScrewCylinderDia,Size.z],center=true);
                               cylinder($fn=$fnInterior ,h=Size.z+0.04,d=ScrewCylinderDia+0.02,center = true);
                            }
                        }
                    }
                }
            }
        }
        for(x=[Size[0]/2-HolePosCorner,-Size[0]/2+HolePosCorner],y=[Size[1]/2-HolePosCorner,-Size[1]/2+HolePosCorner]){translate([x,y,Size[2]-HoleDeepness-LidThick+0.02-Gap]) ThreadHoles ();} //corner thread holes
        for(x=[Size[0]/2-HolePosCorner,-Size[0]/2+HolePosCorner],y=[Size[1]/2-HolePosCorner,-Size[1]/2+HolePosCorner]){ // Corner holes in lid (countersink, normal head, only hole)
            translate([x,-Size.y-Dist-y,0]) union(){
                HolesLid (); // holes lid
                translate([0,0,LidThick+0.04]) if (HoleType==1) {CounterSink();} // Corner countersink
                translate([0,0,LidThick+0.04]) if (HoleType==2) {NormalHead(); } // Corner normal head
            }
        }
        if (AddXScrew){ // holes for additional X Screws
            translate([0,-Size.y/2-Dist-HolePos,0]) HolesLid (); translate([0,-Dist+HolePos-Size.y*1.5,0])HolesLid (); // holes lid
            translate([0,-Size.y/2+HolePos,Size[2]-HoleDeepness-LidThick+0.02-Gap]) ThreadHoles (); translate([0,-Size.y/2-HolePos+Size.y,Size[2]-HoleDeepness-LidThick+0.02-Gap]) ThreadHoles (); // Thread holes for screw
            if (HoleType==1) {translate([0,-Size.y/2-HolePos-Dist,LidThick+0.04]) CounterSink (); translate([0,+HolePos-Dist-Size.y*1.5,LidThick+0.04]) CounterSink ();} // x side normal head
            if (HoleType==2) {translate([0,-Size.y/2-HolePos-Dist,LidThick+0.04]) NormalHead(); translate([0,+HolePos-Dist-Size.y*1.5,LidThick+0.04]) NormalHead();}  // x side countersink
        }
        if (AddYScrew){ // holes for additional Y Screws
            translate([Size.x/2-HolePos,-Dist-Size.y,0]) HolesLid (); translate([-Size.x/2+HolePos,-Dist-Size.y,0])   HolesLid (); // holes lid
            translate([Size.x/2-HolePos,0,Size.z-HoleDeepness-LidThick+0.02-Gap])ThreadHoles (); translate([-Size.x/2+HolePos,0,Size.z-HoleDeepness-LidThick+0.02-Gap])ThreadHoles (); // Thread holes for screw
            if (HoleType==1) {translate([Size.x/2-HolePos,-Dist-Size.y,LidThick+0.04])CounterSink (); translate([-Size.x/2+HolePos,-Dist-Size.y,LidThick+0.04]) CounterSink ();} // y side normal head
            if (HoleType==2) {translate([Size.x/2-HolePos,-Dist-Size.y,LidThick+0.04])NormalHead(); translate([-Size.x/2+HolePos,-Dist-Size.y,LidThick+0.04]) NormalHead();} // y side countersink
        }
        difference(){translate([0,0,Size.z/2]) cube([Size.x+Dist*10,Size.y+Dist*2+Gap*2,Size.z+0.04],center=true); translate([0,0,Size.z/2]) RoundedCube(Size, Rounding,$fn);} // Body cut outside
        translate([0,-Size.y-Dist,0]) LidCut ();
        BodyCut ();

        if(HorizontalCut){translate([Size.x/4,0,Size.z/2]) cube([Size.x/2+0.04,Size.y+0.04,Size.z+0.04],center=true);}
        if(VerticalCut){translate([0,Size.y/4,Size.z/2]) cube([Size.x+0.04,Size.y/2+0.04,Size.z+0.04],center=true);}
        if(DiagonalCut){translate([Size.x/2+0.02,-Size.y/2-0.02,Size.z/2]) rightTriangle(Size.x+0.04, Size.y+0.04, Size.z+0.04);}

        if(HorizontalCut){translate([Size.x/4,-Size.y-Dist,Size.z/2]) cube([Size.x/2+0.04,Size.y+0.04,Size.z+0.04],center=true);}
        if(VerticalCut){translate([0,-(Size.y/2+0.04)/2-Size.y/2-Dist,Size.z/2]) cube([Size.x+0.04,Size.y/2+0.04,Size.z+0.04],center=true);}
        if(DiagonalCut){translate([Size.x/2,-Size.y-Size.y/2-Dist,0]) rightTriangle(Size.x+0.04, Size.y+0.04, Size.z+0.04);}
    }
}
module EasyProjectBox () {if (Position==true) {translate([0,Size.y+Dist,0]) Box();}else {Box();}}
module Rounded2Cube(Size, radius) {cube(Size-[2*radius,0,0],true);cube(Size-[0,2*radius,0],true);for (x = [radius-Size[0]/2, -radius+Size[0]/2],y=[radius-Size[1]/2,-radius+Size[1]/2]){translate([x,y,0]) cylinder(r=radius,h=Size[2],center=true);}}


module RoundedCube(Size, radius,q) {cube(Size-[2*radius,0,0],true);cube(Size-[0,2*radius,0],true);for (x = [radius-Size[0]/2, -radius+Size[0]/2],y=[radius-Size[1]/2,-radius+Size[1]/2]){translate([x,y,0]) cylinder($fn=q,r=radius,h=Size[2],center=true);}}



module CounterSink ()   {rotate([180,0,0]) if (HoleType==1){translate([0,0,0.4-0.01]) cylinder($fn=$fnInterior ,h=CSHeadDia/4,d1=CSHeadDia+0.6,d2=(CSHeadDia+0.6)/2,center=false);cylinder($fn=$fnInterior,h = 0.4,d=CSHeadDia+0.6,center=false);}}
module NormalHead ()    {translate([0,0,-NSHeadSize[1]]) cylinder($fn=$fnInterior ,h = NSHeadSize[1],d=NSHeadSize[0]+0.4,center=false);}
module ThreadHoles ()   {cylinder($fn=$fnInterior ,d=HoleDiaThread,h=HoleDeepness+0.04,center=false);}

module ThreadCylinder () {cylinder($fn=$fnInterior ,d=ScrewCylinderDia,h=Size.z-LidThick-Gap,center=true);}
module HolesLid ()       {cylinder($fn=$fnInterior ,d=HoleDiaLid , h=LidThick+0.04, center=false);}

module rightTriangle(adjacent, opposite, height)  // Laenge, Breite, Hoehe
{
  difference() {
    translate([-adjacent/2,opposite/2,0]) cube([adjacent, opposite, height], true);
    translate([-adjacent,0,0]) {
      rotate([0,0,atan(opposite/adjacent)]) dislocateBox(adjacent*2, opposite, height);
    }
  }
}

module dislocateBox(w,h,d) {
    translate([w/2,h,0]){
        difference(){
            cube([w, h*2, d+1],true);
            translate([-w,0,0]) cube([w, h*2, d+1],true);
        }
    }
}
