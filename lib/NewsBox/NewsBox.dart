import 'package:flutter/material.dart';
import 'package:flutter_su_upp/NewsBox/NewsBoxFavourite.dart';

class NewsBox extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageUrl;
  int _num;
  bool _like;

  NewsBox(this._title, this._text, {String imageUrl, int num = 0, bool like = false}) {
    _imageUrl = imageUrl;
    _num = num;
    _like = like;
  }
  @override
  Widget build(BuildContext context) {
    if (_imageUrl != null && _imageUrl != '')
      return Container(
        color: Colors.black12,
        height: 100.0,
        child: Row(
          children: <Widget>[
            Image.network(
              _imageUrl,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        _title,
                        style: TextStyle(fontSize: 20.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(
                        child: Text(
                          _text,
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                )),
            NewsBoxFavourite(_num, _like)
          ],
        ),
      );
    else
      return new Container(
          color: Colors.black12,
          height: 100.0,
          child: new Row(children: [
            new Expanded(
                child: new Container(
                    padding: new EdgeInsets.all(5.0),
                    child: new Column(children: [
                      new Text(_title,
                          style: new TextStyle(fontSize: 20.0),
                          overflow: TextOverflow.ellipsis),
                      new Expanded(
                          child: new Text(
                            _text,
                            softWrap: true,
                            textAlign: TextAlign.justify,
                          ))
                    ]))),
            new NewsBoxFavourite(_num, _like)
          ]));
  }
}

