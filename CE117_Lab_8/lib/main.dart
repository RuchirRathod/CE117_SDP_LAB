import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Echolist(),
));

class Echolist extends StatefulWidget {
  const Echolist({Key? key}) : super(key: key);

  @override
  State<Echolist> createState() => _EcholistState();
}

class _EcholistState extends State<Echolist> {

  /*List<String> quotes = [
    "It's more important to master the cards you're holding than to complain about the ones your opponents were dealt",
    'The courage to walk into the Darkness, but the strength to return to the Light',
    "Don't wish it were easier, wish you were better. "
  ];*/

  List<Quote> quotes = [
    Quote(text: "It's more important to master the cards you're holding than to complain about the ones your opponents were dealt",author: 'Grimsley'),
    Quote(text: 'The courage to walk into the Darkness, but the strength to return to the Light', author: 'Parables of the Allspring'),
    Quote(text: "Don't wish it were easier, wish you were better. ",author: 'Cheif'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.deepPurple,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),

      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

  /*void main() => runApp(MaterialApp(
    home: FinalTest1(),
  ));

  class FinalTest1 extends StatefulWidget {
    @override
    State<FinalTest1> createState() => _FinalTest1State();
  }

  class _FinalTest1State extends State<FinalTest1> {

    num age = 21.0;
  // const FinalTest1({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(
          title: Text('First App'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[600],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/sub_assets/Miles_1.jpg'),
                ),
              ),
              Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'ABC XYZ',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$age',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.deepPurple[800],
                  ),
                  SizedBox(width: 12.0),
                  Text(
                    'abc@abc.in',
                    style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Stack(
          children:[
            Positioned(
                right: 30,
                bottom: 20,
                child:FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      age += 1;
                    });
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.brown,
                )
            ),
            Positioned(
                left: 30,
                bottom: 20,
                child:FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      age -= 1;
                    });
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.brown,
                )
            )
          ]
        ),
      );
    }
  }*/

/*void main() => runApp(MaterialApp(
  home: Homescreen(),
));

class Homescreen extends StatelessWidget {
  //const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUTTONS WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Row(
            children: [
              Text('hello ddu,...   '),
              Text('   ...Hello 5th sem students....'),
            ],

          ),
          Container(
            color: Colors.lightGreenAccent,
            padding: EdgeInsets.all(60.0),
            child: Text('inside container 1'),
          ),
          Container(
            color: Colors.pink,
            padding: EdgeInsets.all(20.0),
            child: Text('inside container 2'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(40.0),
            child: Text('inside container 3'),
          ),


          Text('HELLO ROW'),
          FlatButton(
            onPressed: (){},
            color: Colors.purple,
            child: Text('press me'),
          ),
          Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),

        ],
      ),


      Row(
        children: [
          Text('HELLO ROW'),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10
              ),
              ),
            child: Text('press me'),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(50),
        child: Text('Hello only padding'),
      ),],),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}*/
