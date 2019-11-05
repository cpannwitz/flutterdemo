import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                    elevation: 4.0,
                    child: Column(children: <Widget>[
                      Image.asset('assets/images/001_image.jpg'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          element,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ])),
              ))
          .toList(),
    );
  }
}
