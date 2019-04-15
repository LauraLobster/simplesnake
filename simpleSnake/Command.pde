class Command {
  void execute() {
    println("Command Execute error");
  }
}

class MakerCommand extends Command {    // Vererbte Klasse MakerCommand der Basisklasse Command
  Snake _commandThis;
  //Buttons _b;


  MakerCommand(Snake commandThis) {    //Konstruktor
    super();
    _commandThis = commandThis;
  }

/*  MakerCommand(Buttons b) {    // Konstruktor
    super();
    _b = b;
  }
  */
}


class CommandUP extends MakerCommand {    // Vererbte Klasse CommandUP der Oberklasse MakerCommand

  CommandUP(Snake commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnUP();
  }
}


class CommandDOWN extends MakerCommand {   // Vererbte Klasse CommandDOWN der Oberklasse MakerCommand

  CommandDOWN(Snake commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnDOWN();
  }
}


class CommandLEFT extends MakerCommand {     // Vererbte Klasse CommandLEFT der Oberklasse MakerCommand

  CommandLEFT(Snake commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnLEFT();
  }
}

class CommandRIGHT extends MakerCommand {    // Vererbte Klasse CommandRIGHT der Oberklasse MakerCommand

  CommandRIGHT(Snake commandThis) {
    super(commandThis);
  }

  void execute() {
    _commandThis.turnRIGHT();
  }
}
