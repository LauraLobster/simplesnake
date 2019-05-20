// jb20190514 Sie meinen hier einen Listener? Anscheinend nimmt er einen Vektor entgegen. Wie könnte man den Listener 
// geschickter benennen? Anscheinend ist hier der Listener zum Subject, das momentan irreführenderweise ListenerVector2D heisst.

interface Observer{  
  void onNotify(Vector2D position);
}
