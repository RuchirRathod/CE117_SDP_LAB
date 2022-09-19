import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    print('Build function inside choose location');
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      //body:
    );
  }
}

/*class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 4),(){
      return 'University Name: DDU';
    });

    String bio = await Future.delayed(Duration(seconds: 2),(){
      return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY';
    });

    print('$username -> $bio');
  }
  @override
  void initState()
  {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('Build function inside choose location');
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      //body:
    );
  }
}*/

/*class _ChooseLocationState extends State<ChooseLocation> {

  void getData() {
    Future.delayed(Duration(seconds: 4),(){
      print('Hello DDU');
    });
    print('in getData after future call');
  }
  @override
  void initState()
  {
    super.initState();
    print('before getData Call');
    getData();
    print('after getData call');
  }

  @override
  Widget build(BuildContext context) {
    print('Build function inside choose location');
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      //body:
    );
  }
}*/

/*class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState()
  {
    super.initState();
    print('Init state function inside choose location');
  }

  @override
  Widget build(BuildContext context) {
    print('Build function inside choose location');
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is: $counter'),
      ),
    );
  }
}*/
