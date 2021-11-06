float a,c,t;

void setup(){
  size(800,600);
  
}
void draw(){
  background(0);
 
  stroke(255);
  //c=map(3,0,height,1,10);
  strokeWeight(2);
   translate(width/2,height);
  // Draw a line 120 pixels
  line(0,0,0,-200);
  // Move to the end of that line
  translate(0,-200);
  // Start the recursive branching
  c=map(height,0,height,0,255);
  stroke(#FFFBAA);
  if(mousePressed){
  branch(random(400,800));
  }
  
}
void branch(float h){
  for(int i=0;i<height;i+=5){
  h*=noise(t);
  t+=0.001;
  
  if(h>1){
    pushMatrix();
    rotate(random(0,TWO_PI));
    line(0,0,0,random(0.1*h,h));
    translate(0,random(0.1*h,h));
    popMatrix();
    pushMatrix();
    rotate(-random(0,TWO_PI));
    line(0,0,0,random(0.1*h,h));
    translate(0,random(0.1*h,h));
    branch(random(0.1*h,h));
    popMatrix();
  }
    
  }
}
    
  
