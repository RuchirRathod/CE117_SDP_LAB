import 'package:ce117_lab_12/pages/choose_location.dart';
import 'package:ce117_lab_12/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:ce117_lab_12/pages/home.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));