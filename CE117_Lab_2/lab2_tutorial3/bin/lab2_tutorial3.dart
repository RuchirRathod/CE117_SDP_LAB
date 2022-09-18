import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main() {
  /* Chapter 3: Types and Operations
    
    1) Data types in Dart

      - int
      - double
      - num
      - dynamic
      - String

      Type inference

        1) Annotating Variable explicitly
          int myInteger = 10;
          double myDouble = 3.14;
        
        2) Creating constant variables with const or final
          const int myInteger = 10;
          const double myDouble = 3.14;
          final int myInteger = 10;
          final double myDouble = 3.14;
        
        3) Letting compiler infer the type
          const myInteger = 10;
          const myDouble = 3.14;
        
        4) Checking the type at runtime
      
          - the "is" keyword.

          num myNumber = 3.14; 
          print(myNumber is double);    // true
          print(myNumber is int);   //false

          - Another option to see the type at runtime is to use the 
            runtimeType property that is available to all types.
          print(myNumber.runtimeType);    // double
        
      Type conversion

        var integer = 100;
        var decimal = 12.5; 
        integer = decimal;    
        // A value of type 'double' can't be assigned to a variable of type 'int'.

        - You can convert this double to an int like so:
          integer = decimal.toInt();

      Operators with mixed types

        const hourlyRate = 19.5; 
        const hoursWorked = 10;
        const totalCost = hourlyRate * hoursWorked;   
        // double because this is the safest choice

        const totalCost = (hourlyRate * hoursWorked).toInt();   
        // Const variables must be initialized with a constant value.
        - The problem is that toInt is a runtime method.
        - easy fix Just change const to final

        final totalCost = (hourlyRate * hoursWorked).toInt();   
        //Now totalCost is an int.

        const double actuallyDouble = 3; 
        // The number 3 is an integer, but literal number values that contain a decimal point cannot be integers
        const wantADouble = 3.0;    
        // this is double

      Casting down
        
        num someNumber = 3;
        print(someNumber.isEven);   
        The getter 'isEven'isn't defined for the type 'num'.
      
        final someInt = someNumber as int;
        print(someInt.isEven);    // false

        int someNumber = 3;
        print(someNumber.isEven);   // false

        num someNumber = 3;
        final someDouble = someNumber as double;    // _CastError (type 'int' is not a subtype of type 'double' in type cast)

        //If you do need to convert an int to a double atruntime, use the toDouble method
        final someDouble = someNumber.toDouble();   // double

    Mini-exercises
      1) 
        const age1 = 42;    // int
        const age2 = 21;    // int

      2)
        const averageAge = (age1 + age2) / 2;   // double  

    2) Strings

      Working with strings in Dart
        - strings are immutable in Dart.
        
          var greeting = 'Hello, Dart!';
          greeting = 'Hello, Flutter!';

        - It’s not like you replaced Dart in the first 
          string with Flutter. No, you completely discarded the string 
          'Hello, Dart!'and replaced it with a whole new string 
          whose value was 'Hello, Flutter!'.

        - Dart doesn’t have Character or char.
          const letter = 'a';   
          //even though letter is only one character long, it’s still 
            of type String.
      
      Single-quotes vs. double-quotes
      
        - Both of these are fine:
          'I like cats'
          "I like cats"
          'my cat\'s food'    
          //Use backslash '\' as an escape character so that Dart 
            knows that the string isn’t ending early

      Concatenation

        var message = 'Hello' + ' my name is '; 
        const name = 'Ruchir';
        message += name;    // 'Hello my name is Ruchir'

        - For multiple number of concatenation use StringBuffer
          final message = StringBuffer();
          message.write('Hello'); 
          message.write(' my name is '); 
          message.write('Ruchir');
          message.toString();   // "Hello my name is Ruchir"
      
      Interpolation
        
        const name = 'Ruchir';
        const introduction = 'Hello my name is $name';    
        // 'Hello my name is Ruchir'

        - Interpolation work for other data types too like num
            const oneThird = 1 / 3;
            const sentence = 'One third is $oneThird.';   
            // One third is 0.3333333333333333.
        - To control number of decimal places by using tostringasfixed()
            final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
            //One third is 0.333. Variable will be 
              final now this method run at runtime
      
      Multi-line strings
        - Example
          const bigString = '''   
          You can have a string
          that contains multiple
          lines
          by
          doing this.''';
          print(bigString);
          //Three double-quotes (""") would have done the same thing.

        - If you don't want newline character do this
          const oneLine = 'This is only ' 
          'a single '
          'line '
          'at runtime.';
          // const oneLine = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';
          // both are the same.
          print(oneLine);   //This is only a single line at runtime.
      
          const twoLines = 'This is\ntwo lines.';
          // This  is 
          // two lines.

        - To ignore any special characters that a string might contain
          const rawString = r'My name \n is $name.';    
          //My name \n is $name.

    Mini-exercises
      1)
        const firstName = "Ruchir";
        const lastName = "Rathod";
      2)
        const firstName = "Ruchir";
        const lastName = "Rathod";
        const fullName = firstName + " " + lastName;
        //Ruchir Rathod
      3)
        const firstName = "Ruchir";
        const lastName = "Rathod";
        const myDetails = "Hello, my name is $firstName $lastName."; 
        //Hello, my name is Ruchir Rathod.

    3) Object and dynamic types

      var myVariable = 42;
      myVariable = 'hello';   // compile-time error
      myVariable = 5.4;   // compile-time error

      dynamic myVariable = 42;
      myVariable = 'hello'; // OK

      var myVariable; // defaults to dynamic
      myVariable = 42; // OK
      myVariable = 'hello'; // OK
    
      // If you need to explicitly say that any type is allowed
      Object? myVariable = 42; // OK, ? -> means that the it's include null value
      myVariable = 'hello'; // OK
    
    Challenges

      C-1 : Teacher’s grading
      final grade = ((90 * 0.20) + (80 * 0.30) + (94 * 0.50)).toInt();
      print(grade);   // 89

      C-2
      const name = 'Ray';
      name += ' Wenderlich';    
      // Constant variables can't be assigned a value. with const we can't change the value

      C-3
      const value = 10 / 2;   // double

      C-6
      const number = 10; 
      const multiplier = 5;
      final summary = '$number * $multiplier = ${number * multiplier}';
      print(summary); // 10 * 5 = 50
  */
}
