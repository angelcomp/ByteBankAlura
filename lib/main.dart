import 'package:bytebankalura/screens/lista_transferencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/transferencia.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary
        ),
      ),
        home: ListaTransferencias(),
    );
  }
}



