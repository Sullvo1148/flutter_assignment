import 'package:flutter/material.dart';

class MyRegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyRegisterFormState();
  }
}

class MyRegisterFormState extends State<MyRegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String name;
  String password;
  String confirm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('REGISTER'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'E-mail Address',
                  border: InputBorder.none,
                  fillColor: Colors.black,
                ),
                onSaved: (value) => name = value,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Password',
                  border: InputBorder.none,
                  fillColor: Colors.black,
                ),
                obscureText: true,
                onSaved: (value) => password = value,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Confirm Password',
                  border: InputBorder.none,
                  fillColor: Colors.black,
                ),
                obscureText: true,
                onSaved: (value) => confirm = value,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    _formKey.currentState.save();
                    if (name == "" || password == "" || confirm == "") {
                      _scaffoldKey.currentState.showSnackBar(
                          SnackBar(content: Text("กรุณาระบุข้อมูลให้ครบถ้วน")));
                    } else if (name == "admin") {
                      _scaffoldKey.currentState.showSnackBar(
                          SnackBar(content: Text("User นี้มีอยู่ในระบบแล้ว")));
                    } else
                      Navigator.pop(context);
                  },
                  child: Text('CONTINUE'),
                )),
          ],
        ),
      ),
    );
  }
}
