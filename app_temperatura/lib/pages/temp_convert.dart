import 'package:flutter/material.dart';

class TempConvert extends StatelessWidget {
  final double temperaturaG;

  TempConvert({required this.temperaturaG});

  @override
  Widget build(BuildContext context) {
    // Recebe os argumentos
    final double? temperature = ModalRoute.of(context)?.settings.arguments as double?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Conversão de Temperatura'),
      ),
      body: Center(
        child: Text('Temperatura: ${temperature ?? temperaturaG}'),
      ),
    );
  }
}
