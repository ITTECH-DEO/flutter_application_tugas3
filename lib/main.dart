import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
// ignore: unused_import
import 'input.dart';
// ignore: unused_import
import 'convert.dart';
// ignore: unused_import
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  final SuhuController = TextEditingController();

  double inputSuhu = 0;

  double reamur = 0;

  double kelvin = 0;

  double fahrenheit = 0;

  // ignore: unused_field
  double _inputUser = 0;
  // ignore: unused_field
  double _kelvin = 0;
  // ignore: unused_field
  double _reamur = 0;
  final inputController = TextEditingController();
  // ignore: unused_field
  String _newValue = "Kelvin";
  // ignore: unused_field
  double _result = 0;

  var listItem = ["Kelvin", "Reamur"];

  void perhitungan() => setState(() {
        inputSuhu = double.parse(SuhuController.text);
        reamur = (4 / 5) * inputSuhu;
        kelvin = inputSuhu + 273;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(SuhuController: SuhuController),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (String changeValue) {},
              ),
              Result(
                kelvin: kelvin,
                reamur: reamur,
              ),
              Flexible(
                child: Container(
                  child: Convert(perhitungan: perhitungan),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
