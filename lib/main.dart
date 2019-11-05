import 'package:flutter/material.dart';
import './products/product_manager.dart';
import './textinput.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurpleAccent,
          brightness: Brightness.light),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Mytitle'),
          ),
          body: ListView(
            addAutomaticKeepAlives: true,
            children: <Widget>[
              TextInput(),
              ProductManager('Food Tester'),
            ],
          )),
    );
  }
}
