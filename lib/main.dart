import 'package:flutter/material.dart';
import './UI/register.dart';
import './UI/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyLoginForm(),
        "/home": (context) => MyHomePage(),
        "/register": (context) => MyRegisterForm(),
      },
    );
  }
}


class MyLoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLoginFormState();
  }
}

class MyLoginFormState extends State<MyLoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String name;
  String pasword;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: true,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
          children: <Widget>[
            Image.asset(
              'resources/Desert.jpg',
              height: 200,
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
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'User Id',
                  border: InputBorder.none,
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
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Password',
                  border: InputBorder.none,
                ),
                obscureText: true,
                onSaved: (value) => pasword = value,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {
                    _formKey.currentState.save();
                    if (name == "" || pasword == "") {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("กรุณาระบุ user or password")));
                    } else if (name == "admin" && pasword == "admin") {
                      Navigator.pushNamed(context, "/home");
                    } else {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("user or password ไม่ถูกต้อง")));
                    }
                  },
                  child: Text('LOGIN'),
                  color: Colors.blueAccent,
                )),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Text('Register New Account',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}