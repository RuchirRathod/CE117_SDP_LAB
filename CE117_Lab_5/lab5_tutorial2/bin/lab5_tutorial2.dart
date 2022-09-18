import 'package:lab5_tutorial2/lab5_tutorial2.dart' as lab5_tutorial2;

/*
  enum Grade { A, B, C, D, F }

  class Person {
    Person(this.givenName, this.surname);
    String givenName;
    String surname;
    String get fullName => '$givenName $surname';
    @override
    String toString() => fullName;
  }

  class Student extends Person {
    Student(String givenName, String surname) : super(givenName, surname);
    // If you use an initializer list, the call to super always goes last, that is, after assert statements and initializers.
    // Calling super(void) is actually unnecessary, because Dart always calls the default constructor for the super class if there are no arguments to pass. The reason that you or Dart always need to make the super call is to ensure that all of the field values have finished initializing.
    var grades = <Grade>[];
    @override
    String get fullName => '$surname, $givenName';
  }

  class SchoolBandMember extends Student {
    SchoolBandMember(String givenName, String surname) : super(givenName, surname);
    static const minimumPracticeTime = 2;
  }

  class StudentAthlete extends Student {
    StudentAthlete(String givenName, String surname) : super(givenName, surname);
    bool get isEligible => grades.every((grade) => grade != Grade.F);
  }

  MINI-EXERCISES:

      1)class Fruit {
          Fruit(this.color);
          String color;
          void describeColor() {
            print(color);
          }
        }
      
      2)class Melon extends Fruit {
          Melon(color) : super(color);
        }
        class Watermelon extends Melon {
          Watermelon(color) : super(color);
        }
        class Cantaloupe extends Melon {
          Cantaloupe(color) : super(color);
        }
      
      3)class Watermelon extends Melon {
          Watermelon(color) : super(color);
          @override
          void describeColor() {
            print('$color in watermelon class');
          }
        }
    
    abstract class Animal {
      bool isAlive = true;
      // Below 2 methods don't have curly braces and end with ; so they are abstract method-
      void move();
      void eat();
      @override
      String toString() {
        return "I am a $runtimeType";
      }
    }

    // If class is extended from abstract class then we have to overrride the method of abstacr class in child class
    class Platypus extends Animal {
      @override
      void eat() {
        print("munch munch");
      }

      @override
      void move() {
        print("Glide glide");
      }

      void layEggs() {
        print('Plop plop');
      }
    }

    abstract class DataRepository {
      factory DataRepository() => FakeWebServer();
      double? fetchTemperature(String city);
    }

    class FakeWebServer implements DataRepository {
      @override
      double? fetchTemperature(String city) {
        return 42.0;
      }
    }
  
  MINI-EXERCISES:

      1)abstract class Bottle {
          void open();
        }
      
      2)class sodaBottel implements Bottle {
          @override
          void open() {
            // TODO: implement open
            print("Fizz fizz");
          }
        }
      
      3)abstract class Bottle {
          void open();
          factory Bottle() => sodaBottel();
        }
  
  abstract class Bird {
    void fly();
    void layEggs();
  }

  mixin EggLayer {
    void layEggs() {
      print('Plop plop');
    }
  }
  mixin Flyer {
    void fly() {
      print('Swoosh swoosh');
    }
  }

  class Robin extends Bird with EggLayer, Flyer {}

  class Platypus extends Animal with EggLayer implements Comparable {
    Platypus(this.weight);
    num weight;

    @override
    void eat() {
      print('Munch munch');
    }

    @override
    void move() {
      print('Glide glide');
    }

    @override
    int compareTo(other) {
      // TODO: implement compareTo
      // throw UnimplementedError();

      if (weight > other.weight)
        return 1;
      else if (weight < other.weight) return -1;
      return 0;
    }
  }

  MINI-EXERCISES:

      1)class Calculator {
          void sum(int x, int y) => print(x + y);
        }
      
      2)mixin Adder {
          void sum(int x, int y) => print(x + y);
        }

      3)class Calculator with Adder {}

  Challenges
    
      Challenge-1:
        var plt1 = Platypus(2.5);
        var plt2 = Platypus(1.5);
        var plt3 = Platypus(0.4);
        var plt4 = Platypus(3.5);
        var plt5 = Platypus(5.2);

        final platypus = [plt1, plt2, plt3, plt4, plt5];
        platypus.forEach((element) {
          print(element.weight);
        });
        print('\n');
        platypus.sort();
        platypus.forEach((element) {
          print(element.weight);
        }); 
      
      Challenge-2:
        class fakeDataBase implements Database {
          List<String> allNotes = [];

          @override
          void saveNote(String note) {
            // TODO: implement saveNote
            allNotes.add(note);
          }

          @override
          String selectNote(int id) {
            // TODO: implement selectNote
            return allNotes[id];
          }
        }

        final database = Database();
        database.saveNote('Have a nice day');
        database.saveNote('Hello world');
        database.saveNote('Hii');
        print(database.selectNote(1));
        print(database.selectNote(0));
        print(database.selectNote(2));
      
      Challenge-3:
        extension on int {
          Duration get minutes => Duration(minutes: this);
        }

        final rtime = 3.minutes;
        print(rtime);
*/
void main() {
  /* Chapter 9: Advanced Classes
    - Object? root of the type system

    final jon = Person('Jon', 'Snow');
    final jane = Student('Jane', 'Snow');
    print(jon.fullName);
    print(jane.fullName);

    final historyGrade = Grade.B;
    jane.grades.add(historyGrade);  

    final jessie = SchoolBandMember('Jessie', 'Jones');
    final marty = StudentAthlete('Marty', 'McFly');

    final students = [jane, jessie, marty];

    print(jessie is Object);
    print(jessie is Person);
    print(jessie is Student);
    print(jessie is SchoolBandMember);
    print(jessie is! StudentAthlete);
  
    Animal platypus = Platypus();
    print(platypus.isAlive);
    platypus.eat();
    platypus.move();
    //platypus.layEggs();
    print(platypus);

    final DataRepository repository = FakeWebServer();
    final temperature = repository.fetchTemperature('Berlin');
    print(temperature);

    final platypus = Platypus();
    final robin = Robin();
    platypus.layEggs();
    robin.layEggs();
  */
}
