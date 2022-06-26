class AllPieces{
  final int ROWS = 5;
  final int COLUMNS = 7;
  int turn = 0;
  int nimSum;
  boolean gameover = false;
  Piece[][] pieces;
  int[][] nimGame ={{0,0,0,0,0,0,1}, 
                    {0,0,0,0,1,1,1},
                    {0,0,1,1,1,1,1}, 
                    {0,0,0,0,1,1,1}, 
                    {0,0,0,0,0,0,1} };
   
   AllPieces(){
     pieces = new Piece[ROWS][COLUMNS];
     for (int i = 0; i < ROWS; i++){
       for (int j = 0; j < COLUMNS; j++){
           pieces[i][j] = new Piece(i,j);
       }
     }
   }
   
   
   
   void show(){
     for (int i = 0; i < ROWS; i++){
       for (int j = 0; j < COLUMNS; j++){
         if (nimGame[i][j] == 1){
         pieces[i][j].show();
          }
        }
      }
      if ( turn % 2 == 1 && gameover == false){
        textSize(30);
        fill(100,200,0);
        text("Player 2", 650, 300);
      }
      else if (gameover == false){
        textSize(30);
        fill(200,100,0);
        text("Player 1", 50, 300);
      }
      textSize(60);
      fill(0);
      text("Soma de nim: " + nimSum,20,750);
    }
    
    
    void update(){
     for (int i = 0; i < ROWS; i++){
       
       for (int j = 0; j < COLUMNS; j++){
         
         if (nimGame[i][j] == 1){
           pieces[i][j].mouseClicked();
           if (pieces[i][j].beenClicked == true){ // start if beenclicked
             nimGame[i][j] = 0;
               turn += 1;
             
             for (int k = j; k >= 0; k--){
               pieces[i][k].beenClicked = true;
               nimGame[i][k] = 0;
              }
        }
      }        
    }
  }
}

    void checkGame(){
     gameover = true;
     fill(0,408,612);
     for (int i = 0; i < ROWS; i++){
       for (int j = 0; j < COLUMNS; j++){
         if (nimGame[i][j] == 1){
           gameover = false;
           }
          }
        }
        if (gameover == true){
          textSize(80);
          fill(0,200,0);
          if(turn % 2 == 1){
            text("Player 1 venceu", 150, 400);
          }
          else{
            text("Player 2 venceu", 150, 400);
          }
    
      }
      else{
        fill(100,100,170);
        textSize(64);
         text("O Jogo de Nim", 220, 100);
      }
}


  void displayNim(){
    int firstRow = 0;
    int secondRow = 0;
    int thirdRow = 0;
    int fourthRow = 0;
    int fifthRow = 0;

      for( int j = 0; j < COLUMNS; j++){
        if (nimGame[0][j] == 1){
          firstRow += 1;
        }
        if (nimGame[1][j] == 1){
          secondRow += 1;
        }
        if (nimGame[2][j] == 1){
          thirdRow += 1;
        }
        if (nimGame[3][j] == 1){
          fourthRow += 1;
        }
        if (nimGame[4][j] == 1){
          fifthRow += 1;
        }
        

      }
      nimSum = (firstRow ^ secondRow ^ thirdRow ^ fourthRow ^ fifthRow);
  }
}
