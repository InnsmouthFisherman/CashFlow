import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Button Example'),
        ),
        body: Center(
          child: BlueButton(),
        ),
      ),
    );
  }
}

class BlueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
      ),
      child: Icon(Icons.add),
      onPressed: () {
        // Обработка нажатия кнопки
      },
    );
  }
}