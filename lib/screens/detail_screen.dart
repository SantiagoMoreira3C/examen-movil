import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/email.dart';
import '../model/celular.dart';

class DetailScreen extends StatelessWidget {
 
  final Celular celular;

  const DetailScreen({Key? key, required this.celular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(celular.model),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('TIPO GAMA: ${celular.description}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(celular.model, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text('PRECIO: ${celular.precio}', style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('NAME PHONE: ${celular.name} ', style: bodyTextStyle),
                ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(185, 36, 103, 203), // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () { 
          Navigator.pop(context);
        },
        child: Text('Done'),
)
            ],
          ),
        ));
  }
}
