// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:state_flutter_app/widgets/favorite_contacts.dart';

import '../widgets/category_selector.dart';
import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget { //stateful widget is dynamic: for example, it can change its appearance in response to events triggered by user interactions or when it receives data. Checkbox , Radio , Slider , InkWell , Form , and TextField are examples of stateful widgets.
  @override
  _HomeScreenState createState() => _HomeScreenState(); //compares similar to constructor - creates state
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu), //menu icon on left
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
          ),
        centerTitle: true, //centers title, found this in flutter documentation
        title: Text( //chats text in the middle of AppBar
          'Chats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search), //search icon on right
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
          ),
        ],
      ),
      body: Column( //'children' takes a list of widgets
        children: <Widget>[
          CategorySelector(), //imported category selector
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFEF9EB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}