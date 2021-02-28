import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    // ignore: non_constant_identifier_names
    @required this.SuhuController,
  }) : super(key: key);

  // ignore: non_constant_identifier_names
  final TextEditingController SuhuController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                controller: SuhuController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: new InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Masukkan Suhu dalam Celcius"),
    );
  }
}
