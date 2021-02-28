import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

class Convert extends StatelessWidget {
  final Function perhitungan;

  Convert({Key key, @required this.perhitungan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 340, 0, 0),
      width: 380.0,
      height: 380.0,
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
          onPressed: () {
            perhitungan();
          }),
    );
  }
}
