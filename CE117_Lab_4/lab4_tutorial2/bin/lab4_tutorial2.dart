import 'package:lab4_tutorial2/lab4_tutorial2.dart' as lab4_tutorial2;
import 'dart:math';

/*
    Initializing non - nullable fields
      
      - Using Initializers
        class User {
          String name = 'anonymous';
        }
      
      - Using initializers formals
        class User {
          User(this.name);
          String name;
        }
      
      - Using initializer list
        class User {
          User(String name);
          _name = name; 
          String _name;
        }
      
      - Using default parameter values
        class User {
          User([this.name = 'anonymous']);
          String name;
        }
    
    
*/
void main() {
  /* Chapter 7: Nullability
    
    1) NULL 
      - "No value" or "absence of a value"

    2) Problem with null
      
      print(isPositive(3)); // true
      print(isPositive(-1)); // false
      print(isPositive(null)); 
      //Error: The getter 'isNegative' was called on null
      
      bool isPositive(int anInteger) {
        return !anInteger.isNegative;
      }

      - Null in dart is not null in traditional sense 
        instead is an instance of class NULL
    

    3) Nullable vs Non nullable 
      Nullable end with ? 
      Non nullable Do not
    
    4) Non-nullable Type
      
      - By default are non nullable (sound null safety)
      
      Exapmle:
        int myInt = 1;
        double myDouble = 3.14159265; bool
        myBool = true;
        String myString = 'Hello, Dart!';

        int postalCode = null; //Error

    5) Nullable Type

      - Ends with '?'

      Example:
        int? myInt = null; 
        double? myDouble = null; 
        bool? myBool = null; 
        User? myUser = null;
        String? myString = null; 
        //String? is a different type from regular string
    
    MINI-EXERCISES:

      1) String? profession;
         print(profession);
      
      2) proffession = "basketball player";

      3) const iLove = "Dart"; 
         //iLove is inferred as String
    
    6) Handling Nullable types

        String? name;
        print(name.length); //Error

      - Type Promotion
        name = "abc";
        print(name.length); 

      - Flow analysis
        bool isPositive(int? anInteger) {
          if (anInteger == null) {
            return false;
          }
          return !anInteger.isNegative;
        }
      
    
    7) Null-aware operators

      - If-null operator(??)
          String? message;
          final msg = message ?? 'No message'; 
          print(msg);
          //If message is null then value of msg is 'No message'
      
      - Null-aware assignment operator(??=)
          int? x;
          x ??= 10; 
          //Same as x = x ?? 10;
  
      - Null aware access operator//null aware method operator
          print(x?.isNegative);
      
      - Null assertion operator(!) or bang operator
          int num = 13!; 
          //It tells that right hand side value is not null and 
          //program will crash if it will be null at runtime
      
      - Null aware cascade operator(?..)
        class User {
          String? name; int?
          id;
        }
        
        User? user1 = User()
          ?..id = 42
          ..name = 'xyz';
        // We can have the chain of the operator
        String? lengthString = user?.name?.length.toString();
      
      - Null aware index operator(?[]):
          List<int>? myList = [1, 2, 3];
          myList = null;
          int? myItem = myList?[2];
          print(myItem);
    
    8) The Late Keyword

      - Means Dart doesn't initialize the variable right away.
        Initializes when you access it for first 
        time called Lazy initialization

        class User {
          User(this.name) {
          _secretNumber = _calculateSecret();
          }
          late final int _secretNumber;
          // ...
        }
    
    Challanges 

      1)int? fun() {
          var random = new Random();
          int? num = random.nextInt(1);
          if (num == 0) {
            num = null;
          }
          return num;
        }
      
      2)class Name {
          Name({givenName = '', surname = '', surnameIsFirst = false});
          String givenName, surname;
          bool surnameIsFirst;
        }
  */
}
