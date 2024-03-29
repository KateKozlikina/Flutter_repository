import 'package:flutter/material.dart';

enum GenderList {male, female}

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyFormState();
  }
}

class MyFormState extends State {
  final _formKey = GlobalKey<FormState>();
  GenderList _gender;
  bool _agreement = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Text('Имя пользователя', style: TextStyle(fontSize: 15.0), textAlign: TextAlign.justify,),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) return 'Пожалуйста, введите свое имя';
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Email', style: TextStyle(fontSize: 15.0)),
            TextFormField(validator: (value){
              if(value.isEmpty) return 'Пожалуйста, введите свой email';
              String p = "[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
              RegExp regExp = new RegExp(p);
              if(regExp.hasMatch(value)) return null;
              return 'Это не Email';
            }),
            SizedBox(height: 20.0,),
            Text('Ваш пол:', style: TextStyle(fontSize: 15.0),),
            RadioListTile(
              title: Text('Мужской'),
              value: GenderList.male,
              groupValue: _gender,
              onChanged: (GenderList value) { setState(() {_gender = value;});},
            ),
            RadioListTile(
              title: Text('Женский'),
              value: GenderList.female,
              groupValue: _gender,
              onChanged: (GenderList value) { setState(() {_gender = value;});},
            ),
            SizedBox(height: 20.0),
            CheckboxListTile(
                value: _agreement,
                title: new Text(
                      'Я ознакомлен'+(_gender==null?'(а)':_gender==GenderList.male?'':'а')+' с документом "Согласие на обработку персональных данных" и даю согласие на обработку моих персональных данных в соответствии с требованиями "Федерального закона О персональных данных № 152-ФЗ".',
                        style: TextStyle(fontSize: 10.0),
                ),
                onChanged: (bool value) => setState(() => _agreement = value)
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Color color = Colors.red;
                  String text;

                  if (_gender == null)
                    text = 'Выберите свой пол';
                  else if (_agreement == false)
                    text = 'Необходимо принять условия соглашения';
                  else {
                    text = 'Форма успешно заполнена';
                    color = Colors.green;
                  }

                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text(text), backgroundColor: color,));
                }
              },
              child: Text('Проверить'),
              color: Colors.blue,
              textColor: Colors.white,

            ),
            RaisedButton(onPressed: (){Navigator.pushNamed(context, '/list');}, child: Text('Открыть список')),
          ],
        ),
      ),
    );
  }
}
