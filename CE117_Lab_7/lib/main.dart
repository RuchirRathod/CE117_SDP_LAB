import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Homescreen(),
  /*home: Scaffold(
    appBar: AppBar(
      title: Text('HELLO FLUTTER...MY FIRST APP'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: Text(
        'HELLO DDU',
        style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Aboreto'),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('click'),
      backgroundColor: Colors.red[600],
    ),
  ),*/
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
      body: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: Icon(
                Icons.photo_camera,
                color: Colors.greenAccent,
                size: 50.0,
              ),
              label: Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Colors.redAccent,
                ),
                textAlign: TextAlign.start,
              ),
              onPressed:  (){},
            )
        )

        /*
          IconButton(
            icon:
            Icon(
              Icons.mail_outline_sharp,
              size: 30.0,
            ),
            tooltip: 'send mail me',
            onPressed: (){
              print('on console print');
            },
          )
          FlatButton(
            onPressed: (){
              print('print on console');
            },
            child: Text('click Me'),
            color: Colors.blue,
          )
          ElevatedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.purple[800],
                padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20
                ),
                textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
          Icon(
            Icons.adb_outlined,
            color: Colors.cyanAccent,
            size: 80.0,
          )
          Image(
              //image: NetworkImage('https://www.gamespot.com/articles/cd-projekt-
              // will-reveal-new-cyberpunk-2077-and-edgerunner-content-
              // on-september-6/1100-6507086/'),
              image: AssetImage('assets/sub_assets/Miles.jpg'),
            )
        */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
