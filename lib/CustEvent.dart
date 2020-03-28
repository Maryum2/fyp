import 'package:flutter/material.dart';
import 'package:flutter_fyp/CustEventSignUp.dart';
import 'package:flutter_fyp/CustEventLogin.dart';
import 'package:flutter_fyp/Welcome.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: Text("Sign Up"),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyWelcome();
                }));
              },
              icon: Icon(Icons.arrow_back),
            ),
        backgroundColor: Colors.teal,
        ),
        body: Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
                 fit: BoxFit.cover,
                image: AssetImage('assets/des.jpg')),
          ),
          child:Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 300.0 ,left:25.0, right:25.0),
                // alignment:Alignment.bottomCenter,
                // margin:  EdgeInsets.all(4.0),
                height: 55.0,
                width: 200.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),

                    side: BorderSide(
                      color: Colors.white, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 2.0, //width of the border
                    ),
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: Text("SignUp",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      )),
                  elevation: 10.0,
                  //splashColor: Colors.black12,
                  color: Colors.teal,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 50.0 ,left:25.0, right:25.0),
                // alignment:Alignment.bottomCenter,
                // margin:  EdgeInsets.all(4.0),
                height: 55.0,
                width: 200.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),

                    side: BorderSide(
                      color: Colors.white, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 2.0, //width of the border
                    ),
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MyLogIn();
                    }));
                  },
                  child: Text("Login",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      )),
                  elevation: 10.0,
                  //splashColor: Colors.black12,
                  color: Colors.teal,
                ),
              ),
            ],
          )
          )
    )
    );
  }
}
