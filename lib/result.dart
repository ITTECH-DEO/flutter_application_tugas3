import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.kelvin,
    @required this.reamur,
    @required this.result,
  }) : super(key: key);
  final double kelvin;
  final double reamur;
  final double result;

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // return Container(
    //   child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: <Widget>[
    //         Column(children: [
    //           Container(
    //             margin: EdgeInsets.fromLTRB(0, 200, 50, 0),
    //             child: Text(
    //               "Suhu Dalam Kelvin",
    //               style: TextStyle(color: Colors.black, fontSize: 15),
    //             ),
    //           ),
    //           Container(
    //               margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
    //               child: Text(
    //                 "$kelvin",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 30,
    //                     fontWeight: FontWeight.bold),
    //               ))
    //         ]),
    //         Column(children: [
    //           Container(
    //             margin: EdgeInsets.fromLTRB(10, 200, 0, 0),
    //             child: Text(
    //               "Suhu Dalam Reamor",
    //               style: TextStyle(color: Colors.black, fontSize: 15),
    //             ),
    //           ),
    //           Container(
    //             margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    //             child: Text(
    //               "$reamur",
    //               style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 30,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //           )
    //         ])
    //       ]),
    // );
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
