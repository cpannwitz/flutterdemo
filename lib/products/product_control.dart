import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function updateProduct;

  ProductControl(this.updateProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text(
        'Add Product',
      ),
      onPressed: () => updateProduct('new'),
    );
  }
}
