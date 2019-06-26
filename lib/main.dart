import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_su_upp/NewsBox/NewsBox.dart';
import 'package:flutter_su_upp/List/List.dart';
import 'package:flutter_su_upp/Form/Form.dart';
import 'package:flutter_su_upp/Navigation/Navigation.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(BuildContext context) => Scaffold(
          appBar: new AppBar(title: new Text('Flutter')),
          body: Center(
            child: MyForm(),
          ),
          floatingActionButton:
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add_box)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
        '/list':(BuildContext context) => ListPow()
      },
  )
  );
}
