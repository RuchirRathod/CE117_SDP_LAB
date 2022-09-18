import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;

/*
  Challenges
    Set<String> returnUniqueWords(String para) {
      var temp = para.replaceAll('.', ' ');
      temp = temp.replaceAll(',', ' ');
      var lists = temp.split(" ").toList();
      lists.sort((l1, l2) => l1.length.compareTo(l2.length));
      print(lists);
      var sets = lists.toSet();
      print(sets);
      return sets;
    }

    Map<String, int> returnCountWords(String para) {
      var temp = para.replaceAll('.', ' ');
      temp = temp.replaceAll(',', ' ');
      var lists = temp.split(" ").toList();
      lists.sort((l1, l2) => l1.length.compareTo(l2.length));
      var map = <String, int>{};
      for (var ele in lists) {
        map[ele] = (map[ele] ?? 0) + 1;
      }
      return map;
    }

    class User {
      User(this.id, this.name);
      int id;
      String name;
    }
*/
void main() {
  /* Chapter 8: Collections
    
    1) Lists

      - Creating a list
        var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
        List<String> snacks = [];
        var snacks = <String>[];
      
      - Printing lists
        print(desserts);
      
      - Accessing elements
        final secondELement = desserts[1];
        print (secondElement);

        //Use indexOf() method to find index of list element
      
      - Assigning values to list elements

        desserts[1] = 'cake';
      
      - Adding elements to a list 
        desserts.add('brownies');
        print(desserts);
      
      - Removing elements from a list
        deserts.remove('cake');
        print(desserts);
    
    2) Mutable and Immutable lists
      
      - Immutable list
        final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
        desserts = [];                    // not allowed
        desserts = ['cake', 'ice cream']; // not allowed
        desserts = someOtherList;         // not allowed

        desserts.remove('cookies'); // OK
        desserts.remove('cupcakes');// OK
        desserts.add('ice cream'); // OK

      - Deeply Immutable list
        const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
        //OR
        final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];

        desserts.add('brownie'); // not allowed
        desserts.remove('pie'); // not allowed
        desserts[0] = 'fudge'; // not allowed

        //If the element values are not known till runtime then use 
        List.unmodifiable

        final modifiableList = [DateTime.now(), DateTime.now()];
        final unmodifiableList = List.unmodifiable(modifiableList);
    
    3) List Properties
      
        const drinks = ['water', 'milk', 'juice', 'soda'];
      
      - Accessing first and last elements
        drinks.first // water
        drinks.last // soda
      
      - Checking if a list contains any elements
        drinks.isEmpty // false
        drinks.isNotEmpty // true
      
      - Looping over the elements of list
        for (var drink in drinks) {
          print(drink);
        }
        //OR
        drinks.forEach((drink) => print(drink));
        //OR
        drinks.forEach(print);
      
      - Flutter UI code is composed of classes called widgets. 
        Three common Flutter widgets are rows, columns and stacks, which 
        all store their children as List collections.

      - Spread operator
        const pastries = ['cookies', 'croissants'];
        const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

        const desserts = ['donuts', ...pastries, ...candy];
        print(desserts);

        //Null spread operator
        List<String>? coffees;
        final hotDrinks = ['milk tea', ...?coffees];
      
      - Collection if
        const peanutAllergy = true;
        const candy = [
          'Junior Mints',
          'Twizzlers',
          if (!peanutAllergy) 'Reeses',
        ];
        print(candy);
      
      - Collection for 
        const deserts = ['gobi', 'sahara', 'arctic'];
        var bigDeserts = [ 
          'ARABIAN',
          for (var desert in deserts) desert.toUpperCase(),
        ];
        print(bigDeserts);
    
    MINI-EXERCISES:

      1) List<String> months = [];
        months.add('January');
        months.add('February');
        months.add('March');
        months.add('April');
        months.add('May');
        months.add('June');
        months.add('July');
        months.add('Augest');
        months.add('September');
        months.add('October');
        months.add('November');
        months.add('December');
        print(months);


      2) final immutable_months = [...months];
         print(immutable_months);

      3) final upperCaseMonths = [for (var itr in months) itr.toUpperCase()];
        print(upperCaseMonths);
    
    4) Sets
      
      - Creating a Set
        final Set<int> someSet = {};
        final someSet = <int>{};
        final anotherSet = {1, 2, 3, 1};
        
      - Printing Set
        print(anotherSet);
      
      - Checking the contents
        print(anotherSet.contains(1)); // true
        print(anotherSet.contains(99)); // false
      
      - Adding single elements
        someSet.add(42);
        someSet.add(2112);
        someSet.add(42); //will not update set
        someSet.addAll([1, 2, 3, 4]);

      -Removing elements
        someSet.remove(2112);
      
    5) Intersections and Unions
      - Intersections
        final setA = {8, 2, 3, 1, 4};
        final setB = {1, 6, 5, 4};
        final intersection = setA.intersection(setB); //{1, 4}
      
      - Unions
        final union = setA.union(setB); //{8, 2, 3, 1, 4, 6, 5}

    6) Sets Properties
      - collection if
      - collections for
      - for-in  loops
      - forEach loops
      - spread operators
    
    7) Maps
      - Creating a Map
        final Map<String, int> emptyMap = {};
        final emptyMap = <String, int>{};
        final emptySomething = {};
        //will infer it to Map if you want set then be explicit
        final inventory = {
          'cakes': 20,
          'pies': 14,
          'donuts': 37,
          'cookies': 141,
        };
        
      - Printing Maps
        print(emptyMap.length); //o
        print(inventory); 
        //{cakes: 20, pies: 14, donuts: 37, cookies: 141}
      
      - Unique keys
        final treasureMap = {
          'garbage': ['in the dumpster'],
          'glasses': ['on your head'],
          'gold': ['in the cave', 'under your mattress'],
        };
      
      - Accessing elements from a map
        final numberOfCakes = inventory['cakes'];
      
      - Adding elements to a map
        inventory['brownies'] = 3;
      
      - Updating an element
        inventory['cakes'] = 1;
      
      - Removing elements from a map
        inventory.remove('cookies');
    
    8) Map Properties
      
        inventory.isEmpty     // false
        inventory.isNotEmpty  // true
        inventory.length      // 4
      
      - Checking for key or value existence
        print(inventory.containsKey('pies')); // true
        print(inventory.containsValue(42)); // false
      
      - Looping over elements of a map
        
        for (var item in inventory.keys) {
          print(inventory[item]);
        }

        inventory.forEach((key, value) => print('$key -> $value'));

        for (final entry in inventory.entries) {
          print('${entry.key} -> ${entry.value}');
        }
    
    MINI-EXERCISES:

      1)Map<String, String> mySelf = {
          'name': 'Ruchir',
          'profession': 'Student',
          'country': 'India',
          'city': 'Surat'
        };

      2)mySelf['country'] = 'Canada';
        mySelf['city'] = 'Toronto';
        
      3)for (var key in mySelf.keys) {
          print("$key --> ${mySelf[key]}");
        }
    
    9) Higher Order methods

      - map, where, reduce, fold and sort

      - Mapping over a collection
        const numbers = [1, 2, 3, 4];
        final squares = numbers.map((number) => number * number);
        print(square); //(1, 2, 3, 4)
      
      - Filtering a collection
        final evens = squares.where((square) => square.isEven);
        print(evens); //(4, 16)
      
      - Using Reduce
        const amounts = [199, 299, 299, 199, 499];
        final total = amounts.reduce((sum, element) => sum + element);
        print(total); //1495
      
      - Using Fold
        const amounts = [199, 299, 299, 199, 499];
        final total = amounts.fold(0, (int sum, element) => sum + element);
      
      - Sorting a list
        final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
        desserts.sort();
      
      - Reversing a list
        var dessertsReversed = desserts.reversed;
      
      - Custom sort
        desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
      
      - Combining higher order methods
        const desserts = ['cake', 'pie', 'donuts', 'brownies'];
        final bigTallDesserts = desserts
              .where((dessert) => dessert.length > 5)
              .map((dessert) => dessert.toUpperCase());
    
    MINI-EXERCISES:

      final scores = [89, 77, 46, 93, 82, 67, 32, 88];

      1)scores.sort();
        print("Heighest:${scores[scores.length - 1]} , Lowest : ${scores[0]}");
      
      2)var rangeScore = scores.where((element) => element <= 90 && element >= 80);
        print(rangeScore);
    
    Challenges
    
      Challenge-1:
        String para = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere, mauris sit amet iaculis congue, justo massa finibus enim, in ornare eros turpis in velit. In quam diam, bibendum in rutrum at, aliquam at elit. Suspendisse potenti. Nulla accumsan ante vitae mauris faucibus porttitor. Aenean et aliquam nulla. Donec at eleifend magna, a aliquam orci.";
        var sets = returnUniqueWords(para);
        print(sets);

      Challenge-2: 
        var map = returnCountWords(para);
        map.forEach((key, value) {
          print("$key --> $value");
        });

      Challenge-3: 
        User user1 = User(1, 'Meet');
        User user2 = User(2, 'Om');
        User user3 = User(3, 'Vedant');
        List<User> users = [user1, user2, user3];

        var userMap = listToMap(users);
        for (var key in userMap.keys) {
          print("id($key) --> name(${userMap[key]})");
        }
      }

      Map<int, String> listToMap(List<User> users) {
        var usersMap = <int, String>{};
        for (var user in users) {
          usersMap[user.id] = user.name;
        }
        return usersMap;
      }
  */
}
