import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/email.dart';
import '../model/celular.dart';

class EmailWidget extends StatelessWidget {
  final Celular celular;
  final Function onTap;


  const EmailWidget(
      {Key? key,
      required this.celular,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(celular);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              
                  Text('PRECIO: ${celular.precio}',
                      style: dateTextStyle),
                  Text(celular.description, style: fromTextStyle),
                  Text(celular.model, style: subjectTextStyle),
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
