class Piece{
 PVector coords;
 boolean beenClicked = false;
 int pieceSize = 50;
  
  
  
  Piece(int i,int j){
    coords = new PVector(i * 50 + 280 + i * 15,j * 50 + 200 + j * 5);
  }
  
  void show(){
    if (beenClicked == false){
    fill(120,120,120);
    square(coords.x,coords.y,pieceSize);
    }
  }
  
  void mouseClicked(){
    if (mouseX >= coords.x && mouseX <= coords.x + pieceSize && mouseY >= coords.y && mouseY <= coords.y + pieceSize && mousePressed == true && beenClicked == false){
      beenClicked = true;
  }
  }
  
}
