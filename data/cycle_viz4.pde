import processing.pdf.*;
Table table;
Table tablea;
float minradius = 60;
float maxradius = 240;
int m = 1;

void setup(){
size(3200,400,PDF,"cycledataviz.pdf");
background(#ffffff);
table = loadTable("pcd_chart-17.csv","header");
//tablea = loadTable("pcd_chart2.csv","header");
}

void draw(){
cycle();
exit();
}


void cycle(){
int m =1; 
pushMatrix();
translate(200,200);
  for(int j =1; j<13; j =j+1){
  while( m <= 12){
   
  for(int i = 0; i<table.getRowCount(); i=i+1){
    TableRow row = table.getRow(i);
    float distance = row.getFloat("distance"); //ride_distance
    int date = row.getInt("dates"); //ride_date
    String label = str(date); //ride_date
    int month_no = row.getInt("month"); //ride_month
    String ride_type = row.getString("ride_type"); //
    String month = row.getString("month_name");
    
  if (month_no == m){
     
  //workout adjustment
  if (ride_type.equals("workout")){
  distance = distance/2;
  } 
  
  // Polar Coordinates Generation
  float ang = radians(date*12);

  float x1 = cos(ang-HALF_PI)*(minradius/2);
  float y1 = sin(ang-HALF_PI)*(minradius/2);

  float r = map(distance,0,150,minradius, maxradius);
  float x2 = cos(ang-HALF_PI)*r;
  float y2 = sin(ang-HALF_PI)*r;
  
  float x3 = cos(ang-HALF_PI)*minradius/3;
  float y3 = sin(ang-HALF_PI)*minradius/3;
  
  // Ride_type color and spoke
  if (ride_type.equals("workout")){
  stroke(#e69f6a);
  strokeWeight(8);
  } else if (ride_type.equals("commute")){
  stroke(#5c8ebc);
  strokeWeight(4);
  }else if (ride_type.equals("errand")){
  stroke(#7db5ad);
  strokeWeight(4);
  }else{
  stroke(#db93c0);
  strokeWeight(4);
  }
  strokeCap(ROUND);
  
  // Drawing the ride lines here on the chart.
  line(x1,y1,x2,y2);
  
  // Splitting the spoke into two
  if (ride_type.equals("workout")){
  stroke(#ffffff);
  strokeWeight(2);
  line(x1,y1,x2,y2); 
  }
  
  // Marking Inner Circle
  stroke(40);
  strokeWeight(3);
  noFill();
  ellipse(0,0,minradius,minradius);
  fill(44,44,44);
  
  // Month Label
  textSize(6);
  textAlign(CENTER,CENTER);
  text(label,x3,y3);
  text(month,0,0);
}
else{
  m = m +1;
  translate(260+500*(j-1),0);
  
  //Trial attempt for grid
  /*if ( m <= 4){
  println(j);
  translate(200+380*(m-1),0);
  }
  else if (m <= 8 && m >= 4){
  //println(j);
  translate(200+380*(m-5),200);
  }
  else if (m <= 12 && m >= 8){
  translate(200+380*(m-9),400);
  }*/
}
}
}
  }
popMatrix();
}
