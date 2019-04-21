# openscad syntax

var = value;
module name(…) { … }
name();
function name(…) = …
name();
include <….scad>
use <….scad>

> 2D

circle(radius | d=diameter)
square(size,center)
square([width,height],center)
polygon([points])
polygon([points],[paths])
text(text, size, font,
     halign, valign, spacing,
     direction, language, script)

> 3D

sphere(radius | d=diameter)
cube(size, center)
cube([width,depth,height], center)
cylinder(h,r|d,center)
cylinder(h,r1|d1,r2|d2,center)
polyhedron(points, triangles, convexity)

> Transformations

translate([x,y,z])
rotate([x,y,z])
scale([x,y,z])
resize([x,y,z],auto)
mirror([x,y,z])
multmatrix(m)
color("colorname",alpha)
color([r,g,b,a])
offset(r|delta,chamfer)
hull()
minkowski()

> Boolean operations

union()
difference()
intersection()

> Modify characters

* disable
! show only
# highlight / debug
% transparent / background
