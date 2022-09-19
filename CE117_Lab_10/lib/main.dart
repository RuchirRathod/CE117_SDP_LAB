import 'package:flutter/material.dart';
import 'package:ce117_lab_10/pages/loading.dart';
import 'package:ce117_lab_10/pages/home.dart';
import 'package:ce117_lab_10/pages/choose_location.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));

/*void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));*/
