import 'package:flutter/material.dart';
import './products/product_manager.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Products Test App'),
          ),
          body: ListView(
            addAutomaticKeepAlives: true,
            children: <Widget>[
              ProductManager('First Product'),
            ],
          )),
    );
  }
}
