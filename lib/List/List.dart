import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<int> _array = [];

  Widget itemBuilder(context, i) {
      if (i.isOdd) return Divider();
      print('${_array.length}');
      final int index = i ~/ 2;
      if (index >= _array.length)
        _array.addAll([pow(2, index), pow(2, index+1), pow(2, index+2)]);
      return ListTile(title: Text(_array[index].toString()));
    }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: itemBuilder
    );
  }
}
