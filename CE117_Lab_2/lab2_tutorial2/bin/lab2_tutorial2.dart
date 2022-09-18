import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;

void main() {
  /* Chapter 2: Expressions, Variables and Constants
    
    1) Commenting Code

      Different type to comment code:
      (i)   // :- Single line comment
      (ii)  /* */ :- Multi-line comment
      (iii) /// :- Single Line Documentation comment
      (iv)  /** */ :- Multi-line Domuentation comment

    2) Printing output

      will print whatever written inside on console
      print("hello, dart"); //Output: hello, dart
    
    3) Statements and expressions

      Statements: something you tell computer to do.
      - statements with "{}" do not need ";"

      Expressions: is a value or is something that can be calculated as
      a value
      Example:
        42     //Output: 42
        3 + 2  //Output: 5
        x      //Output: Error: Undifined name 'x'

    4) Arithmetic operations

      Simple operations
      - Add: +        //Input: 2 + 6 Output: 8
      - Subtract: -   //Input: 10 - 2 Output: 8
      - Multiply: *   //Input: 2 * 4 Output: 8
      - Divide: /     //Input: 24 / 3 Output: 8.0
      - Truncating Divide: ~/ //Input: 24 / 3 Output: 8

      Decimal numbers
      "22 / 7" : 3.142857142857143
      To get integer output use "~/"

      "~/" : truncating divison

      Euclidean modulo operation
        Input 28 % 10 Output 8

      Order of operations
        Operator Precedence(In order higher to lower):
        1) *, /, ~/ and % 
        2) + and -

      Note: Always use parentheses to be sure evaluation is as you want
      Example: 
        350 / 5 + 2   //Output 72.0
        (350 / 5) + 2 //Output 72.0
        350 / (5 + 2) //Output 50.0

      Math Funtion
      To use math function first import file "dart:math"
      - provides you with values of constants like pi
      - provides you abilty to calulate complex math functions of trigno etc
      - Other are max, min and sqrt

      Examples:
      print(sin(45 * pi / 180));   // 0.7071067811865475
      print(sqrt(2));              // 1.4142135623730951
      print(max(5, 10));           // 10
      print(min(-5, -10));         // -10
      print(max(sqrt(2), pi / 2)); // 1.5707963267948966
    
    5) Variables

      Naming Data
      - Identifiers can include both, characters and digits. 
        However, the identifier cannot begin with a digit.
      - Identifiers cannot include special symbols except for underscore (_) 
        or a dollar sign ($).
      - Identifiers cannot be keywords.
      - They must be unique.
      - Identifiers are case-sensitive.
      - Identifiers cannot contain spaces.

        int number = 10; 
        - If you want to change the value of a variable, then you can just give 
          it a different value of the same type:
          number = 15;

        double apple = 3.14159;   
        - The way you store decimal numbers is like objects in Dart. 
        - Dart doesn’t have the primitive variable types that exist in some languages.
        - Everything is an object. 
        - Although int and double look like primitives, they’re subclasses of num, 
          which is a subclass of Object.

        print(10.isEven);   // true
        print(3.14159.round());   // 3

      Type safety
      - Dart is a type-safe language.
      - That means once you tell Dart what a variable’s type is, 
        you can’t change it later.
      
      int myInteger = 10;
      myInteger = 3.14159; // not allowed.

      - The num type can be either an int or a double
      num myNumber;
      myNumber = 10;    // OK
      myNumber = 3.14159;   // OK
      myNumber = "t";   // NO

      Use the dynamic type. 
      - This lets you assign any data type you like to your
        variable, and the compiler won’t warn you about 
        anything.

      dynamic myVariable;
      myVariable = 10;    // OK
      myVariable = 3.14159;   // OK
      myVariable = "ten";   // OK

      - Dart infers the type and makes someNumber an int Type safty 
        still applies.
        var someNumber = 10; 
        someNumber = 15; // OK
        someNumber = 3.14159; // No
    
    6) Constants

      Const:
      - To create a constant in Dart, use the const keyword
        Once you’ve declared a constant, you can’t change its data. 

        const myConstant = 10; 
        myConstant = 0; // Not allowed

      Final:
      - If you can’t create a const variable because you don’t know 
        its value at compile time, then you must use the final
        keyword to make it a runtime constant.
    
        final hoursSinceMidnight = DateTime.now().hour;
        hoursSinceMidnight = 0;   
        - Error => The final variable 'hoursSinceMidnight' can only 
          be set once
    
    MINI-EXERCISES:

      1) Declare a constant of type int called myAge and set it to 
        your age. 
      Ans: const myAge = 21;

      2. Declare a variable of type double called averageAge.
        Initially, set the variable to your own age. Then, set it to 
        the average of your age and your best friend’s age.
      Ans:double averageAge = 21;
          averageAge = 20;

      3. Create a constant called testNumber and initialize it
        with whatever integer you’d like. Next, create another 
        constant called evenOdd and set it equal to testNumber
        modulo 2. Now change testNumber to various numbers. 
        What do you notice about evenOdd
      Ans: const testNumber = 1025;
          const evenOdd = testNumber % 2;
  
    7) Increment and Decrement

      var counter = 0;
      counter += 1;   // counter = 1;
      counter -= 1;   // counter = 0;

      var counter = 0; 
      counter = counter + 1; 
      counter = counter - 1

      var counter = 0; 
      counter++; // 1
      counter--; // 0

      double myValue = 10;
      myValue *= 3; // same as myValue = myValue * 3;
      // myValue = 30.0;
      myValue /= 2; // same as myValue = myValue / 2;
      // myValue = 15.0;
    
    Challenges

    Challenge 1: Variables
    Ans:
      const myAge = 21;
      int dogs = 0;
      dogs++;
      print(dogs);

    Challenge 2: Make it compile
    // Modify the first line so that the code compiles. Did you use var, int, final or const?
    AnsL
      age = 16;   // solution => int or good is var age = 16;
      print(age);
      age = 30; 
      print(age);

    Challenge 3: Compute the answer
    Ans:
      const x = 46;
      const y = 10;
      const answer1 = (x * 100) + y;
      const answer2 = (x * 100) + (y * 100);
      const answer3 = (x * 100) + (y / 10);
      print(answer1); // 4610
      print(answer2); // 5600
      print(answer3); // 4601.0

    Challenge 4: Average rating
    Ans:
      const rating1 = 3.4;
      const rating2 = 4.2;
      const rating3 = 4.5;
      const averageRating = (rating1 + rating2 + rating3) / 3;
      print(averageRating); // 4.033333333333333

    Challenge 5: Quadratic equations
    Ans: 
      const a = 4;
      const b = 6;
      const c = 2;
      final root1 = (-b + sqrt((b * b) - (4 * a * c))) / (2 * a);
      final root2 = (-b - sqrt((b * b) - (4 * a * c))) / (2 * a);
      print(root1);
      print(root1);
  */
  print(350 / (5 + 2));
}
