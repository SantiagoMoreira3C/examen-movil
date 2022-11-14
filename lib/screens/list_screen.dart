import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../model/email.dart';
import '../widgets/celular_widget.dart';
import 'detail_screen.dart';
import '../model/celular.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // State.
  var emails = Backend().getEmails();

  var celulares = Backend().getCelulares();
 


  void showDetail( Celular celular) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( celular: celular,);
    }));

    setState(() {
 
      celulares = Backend().getCelulares();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: celulares.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          celular: celulares[index],
          onTap: showDetail,
        
        ),
      ),
    );
  }
}
