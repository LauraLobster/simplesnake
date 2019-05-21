class Command {
  void execute() {
    println("Command Execute error");
  }
}

class MakerCommand extends Command {    // Vererbte Klasse MakerCommand der Basisklasse Command
  SnakeMovement _commandThis;
  //Buttons _b;


  MakerCommand(SnakeMovement commandThis) {    //Konstruktor
    super();
    _commandThis = commandThis;
  }
}


class CommandUP extends MakerCommand {    // Vererbte Klasse CommandUP der Oberklasse MakerCommand

  CommandUP(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turn("up");
  }
}


class CommandDOWN extends MakerCommand {   // Vererbte Klasse CommandDOWN der Oberklasse MakerCommand

  CommandDOWN(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turn("down");
  }
}


class CommandLEFT extends MakerCommand {     // Vererbte Klasse CommandLEFT der Oberklasse MakerCommand

  CommandLEFT(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turn("left");
  }
}

class CommandRIGHT extends MakerCommand {    // Vererbte Klasse CommandRIGHT der Oberklasse MakerCommand

  CommandRIGHT(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turn("right");
  }
}
