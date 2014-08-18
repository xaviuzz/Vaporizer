
module knob()
{
  difference(){

    cylinder(h=12, r=12, center=false, $fn=50);
    
  }
  difference(){
    translate([0,0,12])
      cylinder(h=12, r=18, center=false, $fn=10);
    
    color("red"){
      translate([-1,0,23])
      cube(size=[2,20,6], center=false);
    }
  }
}

knob();