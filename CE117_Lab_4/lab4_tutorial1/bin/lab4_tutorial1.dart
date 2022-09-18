import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;
import 'user.dart';

/*
  Mini Exercises
    class Password
    {
      final String value;
      const Password([value = '1234']) : this.value = value;
      bool isValid()
      {
        if (value.length >= 8)
        {
          return true;
        }
        return false;
      }

      @override
      String toString()
      {
        return "value:$value";
      }
    }
  
  class Address {
    var value = '';
  }

  class MyClass {
    var myProperty = 1;
  }

  class Email {
    Email(this.value); 
    final value;
  }

  class SomeClass
  {
    static int myProperty = 0;
    static void myMethod()
    {
      print('Hello, Dart!');
    }
  }

  class MySingleton {
    MySingleton._();
    static final MySingleton instance = MySingleton._();
    factory MySingleton() => _instance;
  }

  Challanges
    Challange 1
      class Student
      {
        Student({firstName = 'abc', lastname = 'xyz', grade = 0}):this.firstName = 'abc', this.lastName = 'xyz', this.grade = 100;
        final String firstName, lastName;
        final int grade;
      }
    
    Challange 2
      class Spheres
      {
        static const PI = (22 / 7);
        const Spheres({int radius = 0}):this.radius = radius;
        final int radius;
        double get volume => (4 / 3) * PI * radius * radius * radius;
        double get area => 2 * PI * radius;
      }
*/
void main() {
  /* Chapter 6: Classes
    
    1) Dart Classes
      - Syntax:
        class MyClass {
          var myProperty = 'Hello, Dart'; //Data

          MyClass();                      //Function

          void myMethod(){                //Function
            print(myProperty);
          }
        }
    
      - Creating an object from a class

        final user = User();
        const user = User(id : 42, name : 'Ray);
        const anonymousUser = User.anonymous();
        const ray = User(id: 42, name:'Ray);

        final email = Email('ray@example.com'); 
        final emailString = email.value;    

        final email = Email();
        email.value = 'ray@example.com'; 
        final emailString = email.value;

        final value = SomeClass.myProperty;
        SomeClass.myMethod();

        final mySingleton = MySingleton.instance;

        final mySingleton = MySingleton();

      - Assigning values to properties
        user.name = 'Ray';
        user.id = 42;
    
      - Printing an object
        print(user); 
        //Before Override: Instance of 'User'
        //After Override: User(id: 42, name: Ray)
    
    2) JSON
      - Serialization
        Process of converting complex data object into a string.
    
      - Desierialization
        Process of converting string back to an object of your data type

      - serialization and deserialization are such common tasks that 
        people have devised a number of standardized formats for 
        serializing data. One of the most common is called 
        JSON: JavaScript Object Notation.
      
      - Objects are surrounded by curly braces, properties are separated by 
        commas, property names are separated from values by colons 
        string surrounded by double quotes
      
      - Similar to Dart data type Map.
      
      - Has built-in function dart:convert; 
    
      - print(user.toJson()); //{"id":42,"name":"Ray"}

      - Cascade Notation
        Chain together multiple assignments on the same object without 
        repeating object name.
        final user = User()
          ..name = 'Ray'
          ..id = 42;

    Mini exrecises
      Password p1 = Password();
      p1.value = 'Temp1234';
      print(p1.isVal_id());
      p1.value = '1234';
      print(p1.isVal_id());
    
    3) Constructors
      - Methods that create or construct instances of a class.
      - Have same name as the class implicit return type of the constructor
      - Constructors are of 5 types:
        (Constuctor with class _name only is un_named constructor)
        1) Default Constructor
        2) Custom Constructor(With parameter --> Generic Constructor)
          (i) Long-form constructor
              User(int id, String name){
                this.id = id;
                this.name = name;
              }
          (ii) Short-form constructor
              User(this.id, this.name);
          (iii) Named Constructor
              final anonymousUser = User.anonymous();
              print(anonymousUser);
        3) Factory constructor
    
    4) Optional and named parameters
      - Optional
        MyClass([this.myProperty]);
      - Named
        MyClass({required this.myProperty});
      - Optional and named
        MyClass({this.myProperty});

      final myObject = MyClass();
      final anotherObject = myObject;

      print(myObject.myProperty);
      anotherObject.myProperty = 2;
      print(myObject.myProperty);
  
    5) 4 types of a variable
      
      - class variable: belong to class
      - instance variable : non static variables
      - global variable: top - level method
      - local variable: within a method
    
    Challanges:

      Challange 1:
      
        final Student bert = Student(firstName:'bert', grade: 95);
        final Student ernie = Student(firstName: 'ernie', grade: 85);
      
      Challange 2:
      
        Spheres s1 = Spheres(radius:12);
        print(s1.area);
        print(s1.volume);
}
  */
}
