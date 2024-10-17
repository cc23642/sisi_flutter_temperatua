import 'package:app_temperatura/pages/temp_convert.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final TextEditingController tempController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/convertPage': (context) => TempConvert(temperaturaG: 0.0),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Conversor de Temperaturas"),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Temperatura"),
                controller: tempController,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  double? temperature = double.tryParse(tempController.text);

                  if (temperature != null) {
                    Navigator.of(context).pushNamed(
                      '/convertPage',
                      arguments: temperature,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please enter a valid temperature")),
                    );
                  }
                },

                icon: Icon(Icons.send),
                label: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
