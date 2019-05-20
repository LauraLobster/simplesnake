
 //Globale Objekte
  Border gGameBorder; // jb20190514 Globale Variable besser mit g anfangen lassen
  Snake gSnake;
  SnakeMovement gSnakeMovement;
  Command _c; // Später in Klasse lokal
  
void setup()
{
  build();
  size(1000,1000);
  frameRate(10);
  gSnakeMovement.subscribe(gGameBorder);
  gSnakeMovement.subscribe(gSnake);
}

void draw()
{
  clear();
  background(70); 
  gGameBorder.renderBorder();
  gSnakeMovement.notifyObservers();
  gSnakeMovement.move();
  gSnake.renderMe();
}

void keyPressed() 
{

  // Controller Klasse irgendwann machen 
    if (key == 'w') {
      println("w");
      _c = new CommandUP(gSnakeMovement);
    }
    if (key == 's'){
       println("s");
      _c = new CommandDOWN(gSnakeMovement);
      }
    if (key == 'a'){
       println("a");
      _c = new CommandLEFT(gSnakeMovement);
    }
    if (key == 'd'){
       println("d");
      _c = new CommandRIGHT(gSnakeMovement);
    }
    _c.execute();
    
    
    //Temporär Futter essen auf e
    if(key == 'e'){
      gSnake.eat();
    }
}

void build(){
  gGameBorder = new Border();
  gSnake = new Snake();
  gSnakeMovement = new SnakeMovement();

}

 
