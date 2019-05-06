class Body implements Observer{
  
  int bodySize = 5;
  private Vector2DQueue body = new Vector2DQueue(bodySize); 
  Vector2D lastSnakePosition = new Vector2D(500, 500);
  
   void onNotify(Vector2D position){
     moveBody(lastSnakePosition);
     lastSnakePosition = position;
   }
   
   void moveBody(Vector2D moveHere){
     if(moveHere != null){
     if(body.isFull()){
     body.removeVector();
     }
     body.addVector(moveHere);
     }
   }
   
   void renderMe(){
     if(!body.isEmpty()){
     Vector2D[] temp = body.toArray();
     for(int i = 0; i<bodySize; i++){
       if(temp[i] != null){
        noStroke();
        fill(#008000);
        rect(temp[i].x(),temp[i].y(), 10, 10);
       }
     }
   }
   }
   }
