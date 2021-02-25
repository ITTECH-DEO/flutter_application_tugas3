import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // ignore: non_constant_identifier_names
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
              TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: new InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Masukkan Suhu dalam Celcius"),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 200, 50, 0),
                        child: Text(
                          "Suhu Dalam Kelvin",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                        child: Text(
                          "$kelvin",
                          style: TextStyle(color: Colors.black, fontSize: 15, ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 200, 0, 0),
                        child: Text(
                          "Suhu Dalam Reamor",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "$reamur",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )
                    ])
                  ]),
              Flexible(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 350, 0, 0),
                  width: 380.0,
                  height: 399.0,
                  child: RaisedButton(
                      color: Colors.blue[400],
                      elevation: 6.0,
                      child: Text(
                        "Konversi suhu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
