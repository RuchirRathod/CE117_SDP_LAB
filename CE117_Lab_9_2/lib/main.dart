import 'package:flutter/material.dart';
import 'package:ce117_lab_9_2/pages/home.dart';
import 'package:ce117_lab_9_2/pages/choose_location.dart';
import 'package:ce117_lab_9_2/pages/loading.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));


/*void main() => runApp(MaterialApp(
    //home: Home(),
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));*/
/*
void main() => runApp(MaterialApp(
  home: Home(),
));*/
