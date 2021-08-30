
PImage [] bgImages = new PImage[13]; 
PImage [] seed = new PImage[13];
int index = 0;
Names[] name = new Names[bgImages.length];
Nome[] nome = new Nome [seed.length];

int trunkLength = int(random(35, 220));
boolean firstTime = true;
color [] col = {0, 255};
//float leafLevel = 2;
float leafHue = (RGB);
float leafSat = (RGB);


void setup() {
 
   size(850, 850);
   bgImages[0] = loadImage("b1.png");
   bgImages[1] = loadImage("b2.png");
   bgImages[2] = loadImage("b3.png");
   bgImages[3] = loadImage("b4.png");
   bgImages[4] = loadImage("b5.png");
   bgImages[5] = loadImage("b6.png");
   bgImages[6] = loadImage("b7.png");
   bgImages[7] = loadImage("b8.png");
   bgImages[8] = loadImage("b9.png");
   bgImages[9] = loadImage("b10.png");
   bgImages[10] = loadImage("b11.png");
   bgImages[11] = loadImage("b12.png");
   bgImages[12] = loadImage("b13.png");
   
  
   seed[0] = loadImage("s1.png");
   seed[1] = loadImage("s2.png");
   seed[2] = loadImage("s3.png");
   seed[3] = loadImage("s4.png");
   seed[4] = loadImage("s5.png");
   seed[5] = loadImage("s1.png");
   seed[6] = loadImage("s2.png");
   seed[7] = loadImage("s3.png");
   seed[8] = loadImage("s4.png");
   seed[9] = loadImage("s5.png");
   seed[10] = loadImage("s6.png");
   seed[11] = loadImage("s7.png");
   seed[12] = loadImage("s8.png");
  
    for(int i = 0; i < bgImages.length; i++){
      name[i] = new Names(bgImages[i]);
    }
   
    for(int i = 0; i < seed.length; i++){
      nome[i] = new Nome(seed[i]);
    }

    noLoop();
 
}
   

void draw() {
  
   background(255);
   index = int(random(0,bgImages.length));
   name[index].display();
   nome[index].display();
   println(index);

   translate(width/2, height-25);
   branch(trunkLength);
   
   randomize();
   random (0, 255);
   
   saveFrame("τὰ φυσικὰ - ####.png");
  
   }
  
   class Nome {
  
   PImage img;
   Nome(PImage seed){
   img = seed; 
   
   }
 
   void display(){
   
   stroke(0);
   imageMode(CENTER);
   img.resize(850, 850);
   image(img,width/2,height/2);
   
  }
 }
  
   class Names{
  
   PImage img; 
   Names(PImage bgImages) {
   img = bgImages;
 
 }
 
   void display(){
   
   stroke(0);
   imageMode(CENTER);
   img.resize(850, 850);
   image(img,width/2,height/2);
   
 }
}
 
  void randomize () {
  randomizeColor();
  }

  void randomizeColor() {
  leafHue = random(0, 255);
  leafSat = random(0,255);  
  }
  
  void branch(float len) {

  float theta = random (0.15, PI/3);
  float n = random (60);
  float swt = map(len, 2.6, 90, 0.2, 2.0);
  //stroke(255)
  strokeWeight(swt);
  drawLine(0, 0, 0, -len, swt);
  translate(0, -len);
  len *= 0.68;
  
  if (firstTime) {
    len = 120;
    firstTime = false;
  }
  
  if (len > 1.1) {
    
    pushMatrix();  
    rotate(random(-1,1)*PI/3.5); 
    
    translate(0, theta); 
    branch(len);      
    popMatrix();     
 
  if (n<30) {
    
    pushMatrix();
    rotate(theta);
     
    translate(0, theta);
    branch(len);
    popMatrix();   
  }
  
  else if (n>60) {
    
    pushMatrix();
    rotate(-theta/2);   // Version 1
    line(0, 0, 0, -len);
    translate(0,-len);
    branch(len);
    popMatrix();
      
    }
  }
}

    void drawLine(float strtx, float strty, float finx, float finy, float swIn) { 
  
    int numSegs = 10;
    float fraction = 0;
    int  divBy = numSegs;
    float x1 = strtx;
    float y1 = strty;
    float startWidth ;
  
 
    if (firstTime) startWidth  = 2.3;
    else startWidth = swIn;
    stroke(50);
 
    strokeWeight(startWidth);   
    beginShape();
  
    fill(col[int(random(col.length))], random (leafHue, 105), random (leafSat, 150));
    strokeWeight(startWidth);
    ellipse(strtx + sin(fraction)*finx-x1, strty - cos(fraction)*finy-y1, 8, 3);
    

    for (int j = 0; j <= int (numSegs); j++) {
    float x = (randomGaussian()*.1) + x1 + (fraction * (finx-x1));
    float y = (randomGaussian()*.1) + y1 + (fraction * (finy-y1));
    vertex(x, y);
    x1 = x;
    y1 = y;
    fraction = 1.0/divBy--;   
 }
    endShape();  
 }
 

   void mousePressed() {
   firstTime = true;
   trunkLength = int(random(35, 220));
   redraw();
  
   
 }
 
  
