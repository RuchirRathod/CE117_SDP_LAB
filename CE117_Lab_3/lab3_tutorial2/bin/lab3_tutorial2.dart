import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;

/*
      String compliment(int number)
      {
        return '$number is very nice number.';
      }

    - Dart is optionally-typed language.
    - It is possible to omit the types from your function declaration.
      
      compliment1(int number)
      {
        return '$number is very nice number.';
      }

    - Multiple parameter
      void helloPersonAndPet(String person, String pet) 
      {
        print('Hello, $person, and your furry friend, $pet!');
      }

      String fullName(String first, String last, [String? title]) 
      //use square bracket and ? to make it optional
      {
        if (title != null) 
        {
          return '$title $first $last';
        } 
        else 
        {
          return '$first $last';
        } 
      }

    - Default optional values
      bool withinTolerance(int value, [int min = 0, int max = 10]) 
      {
        return min <= value && value <= max;
      }

    - Named Parameters
      bool withinTolerance1(int value, {int min = 0, int max = 10}) 
      {
        return min <= value && value <= max;
      }

    - Required named parameters
      bool withinTolerance2({required int value, int min = 0, int max = 10,}) 
      {
        return min <= value && value <= max;
      }

    - Function having side effect
      void helloWSideEffect() 
      {
        print('Hello!');
      }

      String helloWOSideEffect() 
      {
        return "Hello!";
      }

    MINI-EXERCISES

      1)String youAreWonderful(String name)
        {
          return "You are wonderful, $name.";
        }

      2)String youAreWonderful(String name, int numberPeople)
        {
          return "You are wonderful, $name. $numberPeople people think so.";
        }

      3)String youAreWonderful({required String name, int numberPeople = 30})
        {
          return "You are wonderful, $name. $numberPeople people think so.";
        }
    
    - Returning Funtions from functions
      Function namedFunction() //higher order function
      { 
        return () { print('hello'); };
      }

      final multiply = (int a, int b)
      {
        return a * b;
      }

      Function applyMultiplier(num multiplier) 
      {
        return (num value) 
        {
          return value * multiplier;
        };
      }
    
    - Closure and scope
      Function countingFunction() 
      { 
        var counter = 0;
        final incrementCounter = () 
        {
          counter += 1;
          return counter;
        };
        return incrementCounter;
      }
  */
void main() {
  /* Chapter 5: Functions

    - Functions DRY: Don't Repeat Yourself
    - Use more pure functions and minimize function side effects
    - Single Responsibility Principle

    - Single parameter function 
      const input = 12;
      final output = compliment(input);   //single parameter function
      print(output);    // 12 is very nice number.

    - Parameters: abstract, Arguments: concrete

    - Multiple parameter function (positional parameters)
      helloPersonAndPet('Fluffy', 'Chris');     // Hello, Fluffy, and your furry friend, Chris!

    - Making parameters optional (string? = nullable string)
      print(fullName('Ray', 'Wenderlich'));                   // Ray Wenderlich
      print(fullName('Albert', 'Einstein', 'Professor'));     // Professor Albert Einstein

    - Providing default values
      print(withinTolerance(5));           // true
      print(withinTolerance(15));          // false
      print(withinTolerance(9, 7, 11));    // true
      print(withinTolerance(9, 7));        // true

    - Naming parameters
      print(withinTolerance1(9, min: 7, max: 11)); // true
      print(withinTolerance1(9, min: 7, max: 11)); // true
      print(withinTolerance1(9, max: 11, min: 7)); // true

      print(withinTolerance1(5));            // true
      print(withinTolerance1(15));           // false
      print(withinTolerance1(9, min: 7));    // false
      print(withinTolerance1(15, max: 20));  // true

      // Error: Too many positional arguments: 1 expected, but 3 found.
      print(withinTolerance1(9, 7, 11));

      // Error: Too few positional arguments: 1 required, 0 given.
      print(withinTolerance1());

    - Making named parameters required
      //Error: The named parameter 'value' is required, but there's no 
        corresponding argument.
      print(withinTolerance2());
    
    - Anonymous Functions
      int number = 4;
      String greeting = 'hello';
      bool isHungry = true;
      Function multiply = (int a, int b) 
      {
        return a * b;
      };

      // Error: Function expressions can't be named.

      Function myFunction = int multiply(int a, int b)
      {
        return a * b;
      };

      print(multiply(2, 3));      // 6
      
      final triple = applyMultiplier(3);
      print(triple(6));         // 18
      print(triple(14.0));      // 42.0
    
    - Anonymous fuction in forEach Loop
      const numbers = [1, 2, 3];

      numbers.forEach((number) 
      {
        final trippled  = number*3;
        print(trippled);
      });
      // 3 6 9
    
    - Closure
      final counter1 = countingFunction();
      final counter2 = countingFunction();

      print(counter1()); // 1
      print(counter2()); // 1
      print(counter1()); // 2
      print(counter1()); // 3
      print(counter2()); // 2
    
    MINI-EXERCISES

      1)Function wonderful = (String name)
      Ans:  {
          return "You are wonderful, $name.";
        };

      2)const people = ['Chris', 'Tiffani', 'Pablo'];
      Ans:  people.forEach((person) 
        { 
          print(wonderful(person)); 
        });
        // You are wonderful, Chris.
        // You are wonderful, Tiffani.
        // You are wonderful, Pablo.

      3)Create a constant called testNumber and initialize it
        with whatever integer you’d like. Next, create another 
        constant called evenOdd and set it equal to testNumber
        modulo 2. Now change testNumber to various numbers. 
        What do you notice about evenOdd
      Ans: const testNumber = 1025;
          const evenOdd = testNumber % 2;
    
    - Arrow Functions
      int add(int a, int b) => a + b;

      - Refactoring Example 1
        final multiply = (int a, int b) => a * b;
        print(multiply(2, 3)); // 6

      - Refactoring Example-2
        Function applyMultiplier1(num multiplier) 
        {
          return (num value) => value * multiplier;
        }
      
      - Refactoring Example 3
        const numbers = [1, 2, 3];
        numbers.forEach((number) => print(number * 3));
    
    MINI-EXERCISES
      const people = ['Chris', 'Tiffani', 'Pablo'];
      people.forEach((person) => print("You are wonderful, $person."));
    
    Challenges
    
      Challenge-1: Prime Time
      Ans:
        Function isPrime = (n) 
        {
          for(int i = 2; i <= sqrt(n); i++)
          {
            if(n%i == 0)
              return false;
          }
          return true;
        };
        print(isPrime(19));   // true
        print(isPrime(20));   // false

      Challenge-2: Can you repeat that?
      Ans:
        int repeatTask(int times, int input, Function task)
        {
          while(times-- != 0)
          {
            input = task(input);
          }
          return input;
        }
        print(repeatTask(4, 2, (n) { return n*n; }));

      Challenge-3: Dart and Arrows
      Ans: 
        print(repeatTask(4, 2, (n) => n*n ));
  */
}
