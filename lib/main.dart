import 'package:flutter/material.dart';
import './products/product_manager.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      routes: mainRoutes,
      // home: HomeRoute()
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Navigator.of(context).pushNamed('/settings'),
                );
              },
            ),
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

class SettingsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pushNamed('/'),
              );
            },
          ),
          title: Text('Products Test App'),
        ),
      ),
    );
  }
}

Map<String, Widget Function(BuildContext)> mainRoutes = {
  '/': (context) => HomeRoute(),
  '/settings': (context) => SettingsRoute()
};
