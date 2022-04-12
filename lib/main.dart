import 'package:flutter/material.dart';
import 'package:state_flutter_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { //stateless widget - a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely
  //This widget is the root fo your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(); //ThemeData
    return MaterialApp(
      title: 'First Flutter App',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(primary: Colors.red, secondary: Color(0xFFFEF9EB)),
      ),
      home: HomeScreen(),
      );
  }
}