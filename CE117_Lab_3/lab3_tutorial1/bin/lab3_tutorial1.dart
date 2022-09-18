import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;

void main() {
  /* Loops
    
    1) While Loops
      - While loop repeats a block of code as long as boolean condition is true
        loop checks on every iteration.
        if condition is false then loop stops.
        Example
          while(condition)
          {
            //loop code       
          }

          var sum = 1;
          while(sum < 10)
          {
            sum += 4;
            print(sum);
          }
    
    2) DO-while Loops

      - Variant of while loop. Do - while loops runs atleast once as 
        condition is evaluated at the end of the loop.
        do
        {
          //loop code
        } while (condition)

        sum = 1;
        do
        {
          sum += 4;
          print(sum);
        } while(sum < 10);

      - If you want to break the loop early you can use break statement 
        as we used in switch;
        sum = 1;
        while(true)
        {
          sum += 4;
          
          if(sum > 10)
          {
            break;
          }
        }

      - You can use random method to generate a random number in each 
        iteration which can used by different loop like import dart math
        final random = Random();
        while (random.nextInt(6) + 1 != 6)
        {
          print('Not a six!');
        }
    
    3) For Loops
      
      - This is the C style for loop, it will run a block of code a set 
        number of times.
        for(var i = 0; i < 5; i++)
        {
          print(i);
        }

      - Continue keyword: If you want to skip an iteration only for a 
        certain condition.
        for(var i = 0; i < 5; i++)
        {
          if( i == 2)
          {
            continue;
          }
          print(i);
        }
    
    4) For-in loops
      
      - This for loop has simpler syntax. It makes it easier to iterate 
        over a collection.

        const mystring = 'I ❤️ dart';

        for(var codePoint in mystring.runes)
        {
          print(String.fromCharCode(codePoint));
        }

    5) For-Each loops
      
      const myNumbers = [1, 2, 3];
      myNumbers.forEach((number) => print(number));

      myNumbers.forEach((number) 
      { 
        print(number); 
      }); Both statements are similar
    
    Mini Exercises

      1)int counter = 0;
        while(counter < 10)
        {
          print("counter is $counter");
          counter++;
        }

      2)for(int i = 1; i <= 10; i++)
        {
          print(i*i);
        }
      
      3)const numbers = [1, 2, 4, 7];
        for(var n in numbers)
        {
          print(sqrt(n));
        }

      4)numbers.forEach((n) =>  print(sqrt(n)));
    
    Challenges

      Challenge 1: Find the Error
      Ans:
        const firstName = 'Bob'; 
        if(firstName == 'Bob') 
        {
          const lastName = 'Smith';
        } 
        else if (firstName == 'Ray') 
        {
          const lastName = 'Wenderlich';
        }
        // No Error: Code will run fine
      
      Challenge 2: Boolean challenge
      Ans:
        print(true && true);                              // true
        print(false || false);                            // false
        print((true && 1 != 2) || (4 > 3 && 100 < 1));    // true
        print(((10 / 2) > 3) && ((10 % 2) == 0));         // true
      
      Challenge 3: Next power of two
      Ans:
        var n = 36;
        if(n <= 2)
        {
          print(2);
        }
        else if(n <= 4)
        {
          print(4);
        }
        else
        {
          var temp = 8;

          while(temp < n)
          {
            temp *= 2;
          }
          print(temp);    // 64
        }
      
      Challenge 4: Fibonacci
      Ans:    
        var index = 19;
        if(index == 1 || index == 2)
        {
          print(1);
        }
        else
        {
          var ls1 = 1;
          var ls2 = 1;
          for(int i = 3; i <= index; i++)
          {
            int temp = ls1 + ls2;
            ls1 = ls2;
            ls2 = temp;
          }
          print(ls2);     // 4181
        }

      Challenge 5: How many times?
      Ans:
        var sum = 0;
        for (var i = 0; i <= 5; i++) 
        {
          sum += i;
        }
        print(sum);                     // 15
        print("(5 + 1) iterations");    // (5 + 1) iterations

      Challenge 6: The final countdown
      Ans:
        for(int i = 10; i >= 0; i--)
        {
          print(i);
        }
      
      Challenge 7: Print a sequence
      for(var i = 0.0; i <= 1; i += 0.1)
      {
        print(i.toStringAsFixed(1));
      }
  */
}
