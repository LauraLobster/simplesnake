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
    _commandThis.turnUP();
  }
}


class CommandDOWN extends MakerCommand {   // Vererbte Klasse CommandDOWN der Oberklasse MakerCommand

  CommandDOWN(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnDOWN();
  }
}


class CommandLEFT extends MakerCommand {     // Vererbte Klasse CommandLEFT der Oberklasse MakerCommand

  CommandLEFT(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnLEFT();
  }
}

class CommandRIGHT extends MakerCommand {    // Vererbte Klasse CommandRIGHT der Oberklasse MakerCommand

  CommandRIGHT(SnakeMovement commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnRIGHT();
  }
}
