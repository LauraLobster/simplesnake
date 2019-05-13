class Snake implements Observer {
  
  int bodySize = 5;
  private Vector2DQueue body = new Vector2DQueue(bodySize); 
  
   void onNotify(Vector2D position){
     moveBody(position);
   }
      
   void moveBody(Vector2D moveHere){
     if(moveHere != null){
     if(body.isFull()){
     body.removeVector();
     }
     body.addVector(moveHere);
     }
   }
   void eat(){
     body.addCapacity();
   }
   
   
   //Das musin VisualSnake verlagern
   void renderMe(){
     if(!body.isEmpty()){
     Vector2D[] temp = body.toArray();
     for(int i = 0; i<body._capacity; i++){
       if(temp[i] != null){
        noStroke();
        fill(#008000);
        rect(temp[i].x(),temp[i].y(), 10, 10);
       }
     }
   }
   }
   }
