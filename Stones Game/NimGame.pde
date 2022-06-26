AllPieces test;


void setup(){
 size(800,800);
 frameRate(60);
 test = new AllPieces();
 textSize(100);
}


void draw(){
 background(255);
 test.show();
 test.update();
 test.checkGame();
 test.displayNim();
 if (mousePressed && (mouseButton == CENTER)){
   setup();
 }
  
  
  
  
}
