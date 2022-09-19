import 'package:flutter/material.dart';
import 'package:ce117_lab_10/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String? time = 'Loading ';
  void setWorldTime() async{
    WorldTime timeinstance = WorldTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();

    setState(() {
      time = timeinstance.time;
    });
  }
  @override
  void initState()
  {
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(60.0),
        child: Text(time.toString()),
      )
    );
  }
}

/*class _LoadingState extends State<Loading> {

  void getTime() async {
    final response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    print(response.body);

    Map timeData = jsonDecode(response.body);
    print(timeData);

    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset']; //not dst_offset
    print(dateTime);
    print(offset);
    DateTime currentTime = DateTime.parse(dateTime);
    print(currentTime);

    String offsetHours = offset.substring(1,3);
    print(offsetHours);
    String offsetMinutes = offset.substring(4,6);
    print(offsetMinutes);
    currentTime = currentTime.add(Duration(minutes:int.parse(offsetMinutes),hours:int.parse(offsetHours)));
    print(currentTime);
  }
  @override
  void initState()
  {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}*/

/*class _LoadingState extends State<Loading> {

  void getData() async {
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);

    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState()
  {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}*/
