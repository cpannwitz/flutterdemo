import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  // TextInput({Key key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final TextEditingController controller = TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'type here'),
              onSubmitted: (String str) {
                setState(() {
                  result = str;
                });
                controller.clear();
              },
              controller: controller,
            ),
            Text(result)
          ],
        )));
  }
}
