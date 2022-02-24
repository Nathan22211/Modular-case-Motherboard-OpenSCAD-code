

module frame_cube() {
    difference() {
    cube([10,10,10]);
    translate([5,5,0]) cylinder(h=12, r1=2, r2=2, $fn=100);
    translate([5,11,5]) rotate([90,0,0]) cylinder(h=12, r1=2, r2=2, $fn=100);
    translate([-1,5,5]) rotate([0,90,0]) cylinder(h=14, r1=2, r2=2, $fn=100);
    }
}
//itx
/*
import("mainboard - itx-v2.stl", convexity=3);
translate([0,0,-10]) frame_cube();

for (i = [0:18]) {
    translate([0,-10*i,-10]) frame_cube();
    }
for (i = [0:18]) {
    translate([-10*i,0,-10]) frame_cube();
    }
translate([-177,3,-10]) cube([184,4,10]);
translate([3,-177,-10]) cube([4,184,10]);
*/
//dtx
import("mainboard - dtx-v2.stl");
for (i = [19:25]) {
    translate([0,-10*i,-10]) frame_cube();
    }
translate([3,-247,-10]) cube([4,64,10]);
/*
//atx
import("mainboard - atx1-v2.stl");
for (i = [19:31]) {
    translate([-10*i,0,-10]) frame_cube();
    }
translate([-307,3,-10]) cube([124,4,10]);
*/
//eatx
import("mainboard - eatx2-v2.stl");
for (i = [26:34]) {
    translate([0,-10*i,-10]) frame_cube();
    }