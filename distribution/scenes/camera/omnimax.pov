// This work is licensed under the Creative Commons Attribution 3.0 Unported License.
// To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/
// or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View,
// California, 94041, USA.

// Persistence Of Vision Raytracer sample file.
// Created by Fabien Mosen - April 8 2001
// This file demonstrates the use of the "omnimax" camera.
//
//  
// update to 3.7 by Friedrich A. Lohm�ller, Feb-2013

#version 3.7;
global_settings {assumed_gamma 1.0}

#include "colors.inc"
#include "camera-context.inc" //common file containing object definitions for the camera demos

camera {
        omnimax
        location <5,3,8>
        right    x*image_width/image_height
        look_at <0,4,2>
        //no angle needed
        }


box {<-15,0,-15>,<15,-1,15>
     pigment {checker White,Gray90 scale 5}
     finish {reflection {.1}}
     }

object {Cubes1 translate <5,0,-5>}
object {Cubes2 translate <9,8,-6>}
object {Cubes3 translate <-15,0,5>}
object {Cubes4 translate <-10,0,-5>}

sphere {<-2,3,14>,3 pigment {SteelBlue} finish {phong .2 reflection {.3}}}

sky_sphere {pigment {rgb <0.859,0.910,0.831>}}

light_source {<-5,10,10> White*2}
