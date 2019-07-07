//Import Flutter Library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

//Create a class that wil; be our custo widget
//This class must extend the 'StatelessWidget' base class
class AppState extends State<App> {
  int counter = 1;

  void fetchImage() {
    get('https://jsonplaceholder.typicode.com/photos/${counter}')
  }
  //Must define a build method that returns
  //the widgets hat *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Text("${counter}"),
          appBar: AppBar(
            title: Text("Let's see some images"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
            child: Icon(
              Icons.add,
              color: Colors.pink,
              size: 30.0,
            ),
            backgroundColor: Colors.pink,
          )),
    );
  }
}
