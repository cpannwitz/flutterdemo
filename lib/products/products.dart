import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
              elevation: 1.0,
              child: Column(children: <Widget>[
                Image.asset('assets/images/001_image.jpg'),
                Text(element),
              ])))
          .toList(),
    );
  }
}
