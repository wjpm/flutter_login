import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'App Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30),
      color: Colors.teal[400],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Text('Login',
          textAlign: TextAlign.center,
          style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );


    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155,
                  child: Image.asset("lib/assets/logo.png",
                  fit: BoxFit.contain,),
                ),
                SizedBox(height: 45),
                emailField,
                SizedBox(height: 25,),
                passwordField,
                SizedBox(height: 15,),
                loginButon,
                SizedBox(height: 15,)
              ],),
          ),
        ),
      ),
      

    );

  }
}