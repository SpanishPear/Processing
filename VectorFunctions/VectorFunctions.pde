
void setup() {
  size(500,300);
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();
  
  translate(width/2, height/2);
  
  ellipse(0,0,4,4);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  //subtracting two vectors results in a vector that describes the relationship (ie distance + direction) between two points
  mouse.sub(center);
  //multiplying keeps direction, SCALES size, ie multiplication == SCALE
  mouse.mult(3);
  //mag is a measurement of the SIZE of the distance between mouse and centre 
  //ie the hypotenuse of the vector triangle
  println(mouse.mag());
  //normalise means direction is same but magnitude (size) is set to one
  //once you have it at length 1, easy to scale to any length
  mouse.normalize();
  mouse.mult(50);
  //setMag() is essentially normalize() and then mult()
  mouse.setMag(50);
 
  
  line(0,0, mouse.x, mouse.y);
}
