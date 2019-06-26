import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_su_upp/NewsBox/NewsBox.dart';
import 'package:flutter_su_upp/List/List.dart';
import 'package:flutter_su_upp/Form/Form.dart';
void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Flutter')),
        body: Center(
          child: MyForm(),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add_box)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      )));
}

//class MyBody extends StatelessWidget {
//  Widget build(BuildContext context) {
//    return Center(
//        child: Column(
//      children: <Widget>[
//        new Text('Hello World'),
//        FlatButton(
//          onPressed: () async {
//            const url = 'https://flutter.su';
//            if (await canLaunch(url)) {
//              await launch(url);
//            } else {
//              throw 'Could not launch $url';
//            }
//          },
//          child: Text('open site'),
//          color: Colors.blueGrey,
//          textColor: Colors.white,
//        )
//      ],
//    ));
//  }
//}

