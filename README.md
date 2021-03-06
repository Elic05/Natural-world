# NATURAL WORLD

Natural world is an NFT scalable collectibles project inspired to fractals, generated by the union of painted images and coding.

# Who we are
Art and culture are part of our life and characterise the society in which we live. Nuna is an artistic initiative that aims to support artistic creation, 
dissemination and research. It promotes the development of connections between people from different disciplines and in various spaces.

ElyColz: CEO Nuna Org 
Audiovisual and graphic artist who has a passion in watercolour painting. 
She is an artist part of a blockchain art residency project. 
She has worked in different projects in Perù, Romania, Italy, Spain and Greece generating creative and communicational material.

Munay: CEO Nuna Org 
Artist who combines audiovisual techniques with digital technology. 
He has participated in different art festivals in France, Poland, Bulgaria, Spain and Romania. 
He is an artistic curator in a blockchain art residency project. 

# Concept
Blockchain and code have a strong connection with the outside world and art, nature around us is capable to generate configurations that inspire artistic creation and that we have to preserve. 
We have been a lot fascinated by the patterns and shapes that nature offers to humanity, in most of our project nature has been an inspiration and guide. 
Trees are the protagonists of τὰ φυσικὰ. They are natural fractals, characterised by patterns that repeat smaller and smaller copies of themselves to create the biodiversity of a forest. 
Each tree branch, from the trunk to the top, is generated by the one that came before it. 
For us fractals are a common artistic language that connect us and nature.

# How?
τὰ φυσικὰ is a Generative Art NTF collection of trees inspired to fractals, each art is unique and unpredictable. 
The collection is developed in Processing thought the implementation random variables composing the elemenths of each art piece.

```
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
 
```

<img src="https://user-images.githubusercontent.com/89703720/131333357-1213c022-dde2-436d-a37b-705308ba0c85.png" width="350" height="350">

Each NFT is composed of 4 different components:
- tree branches (direction, height, length)
- leaves colours (hue)
- watercolour hand painted background - with different shapes 
- seed (created in photoshop)

The amount of watercolour backgrounds will increase in time, we will always create new images.
A number of 1018 will be created.

# Seeds - Reward
The first trees will be created and sold accompanied by a little seed which will generate a new tree.

# Future Development
For the future we want to develop the Step 2.0 of the project. 
This will give each buyer the opportunity to click and choose the favourite tree to mint and buy directly from the web page.

# NFTs Community
All holders will together build a growing community around τὰ φυσικὰ. As a reward and proof of membership to each member (as long as she/he has the art) will be given the project token as a benefit.

# Benefits 
All NFT holders will have access to some benefits:
- Giveaways and drops (NFT holders)
- Competitions (NFT holder and artists/developers/interested people in taking part in the project and receive benefits)
- Full commercial rights 
- Early access or discounts to future drops
- Project token
- Auctions
- Seed reward (each seed generates a new tree)

# Proyect Token
- Reward for NFTs holders
- Proof of membership
- Exchange of art and Indorse token!

<img width="1040" alt="Schermata 2021-09-21 alle 18 37 56" src="https://user-images.githubusercontent.com/89703720/134202472-b1eeac78-74b2-4290-b436-0b238f9878bd.png">


# Prototype:
<img src="https://user-images.githubusercontent.com/89703720/131332257-91245956-a942-4b9b-871b-36cb8616738b.png" width="350" height="350">
<img src="https://user-images.githubusercontent.com/89703720/131332335-17628485-c88b-47b5-a50f-392dccd08e30.png" width="350" height="350">



