import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
// ignore: unused_import
import 'input.dart';
// ignore: unused_import
import 'convert.dart';
// ignore: unused_import
import 'result.dart';
// ignore: unused_import
import 'Buttondropdown.dart';
// ignore: unused_import
import 'Riwayat.dart';

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

  // double reamur = 0;

  // double kelvin = 0;

  double fahrenheit = 0;

  // ignore: unused_field
  double _kelvin = 0;
  // ignore: unused_field
  double _reamur = 0;
  // ignore: unused_field
  String _newValue = "Kelvin";
  // ignore: unused_field
  double _result = 0;

  List<String> listViewItem = List<String>();

  var listItem = ["Kelvin", "Reamur"];

  void perhitungan() {
    setState(() {
      inputSuhu = double.parse(SuhuController.text);
      if (_newValue == "Kelvin") {
        _result = inputSuhu + 273;
        listViewItem.add("Kelvin : " + _result.toString());
      } else {
        _result = (4 / 5) * inputSuhu;
        listViewItem.add("Reamur : " + _result.toString());
      }
    });
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
      perhitungan();
    });
  }

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
              Buttondropdown(
                  listItem: listItem,
                  newValue: _newValue,
                  dropdownOnChanged: dropdownOnChanged),

              // ignore: missing_required_param
              Result(
                // kelvin: kelvin,
                // reamur: reamur,
                result: _result,
              ),
              Flexible(
                child: Container(
                  child: Convert(perhitungan: perhitungan),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: Riwayat(listViewItem: listViewItem),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
