import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter.currency();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: TextFormField(
            initialValue: _formatter.formatString('2000'),
            inputFormatters: <TextInputFormatter>[_formatter],
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
