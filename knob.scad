substraction_color="red";
negative_factor= -1;
no_offset=0;


module knob()
{
   cylinder(h=12, r=12, center=false, $fn=100);
    
	difference(){
   translate([0,0,12])
		
   cylinder(h=12, r=18, center=false, $fn=100);
   dial();
    
  }

}

module dial()
{
	width = 2;

	offset_x = ((width/2) * negative_factor);
	offset=[offset_x,no_offset,10];

	color(substraction_color){
      translate(offset)
      cube(size=[width,50,18], center=false);
    }
}

knob();