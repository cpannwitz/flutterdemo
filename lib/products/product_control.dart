import 'package:flutter/material.dart';
// import '../textinput.dart';

class ProductControl extends StatefulWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  _ProductControlState createState() => _ProductControlState();
}

class _ProductControlState extends State<ProductControl> {
  final TextEditingController controller = TextEditingController();
  String inputValue = '';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Example Product Name'),
              onChanged: (String value) {
                setState(() {
                  inputValue = value;
                });
              },
              controller: controller,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Add Product',
              ),
              onPressed: () {
                widget.addProduct(inputValue);
                controller.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
