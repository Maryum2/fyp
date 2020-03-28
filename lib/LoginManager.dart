import 'package:flutter/material.dart';
import 'package:flutter_fyp/CustEvent.dart';
import 'package:flutter_fyp/main.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: ManagerLogIn()));

class ManagerLogIn extends StatefulWidget {
  ManagerLogIn();

  @override
  _MyManagerLogInState createState() => _MyManagerLogInState();
}

class  _MyManagerLogInState extends State<ManagerLogIn> {
  TextEditingController emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: Text("LogIn"),
            backgroundColor: Colors.teal,
    leading: IconButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MyHomePage();
      }));
    },
    icon: Icon(Icons.arrow_back),
    )),
    body: Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/des.jpg')),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(24),

              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/eventmanager.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailEditingController,
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Username...",
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.teal,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: emailEditingController,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password...",
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.teal,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    height: 55.0,
                    width: 200.0,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ManagerView();
                        }));
                      },
                      child: Text("LogIn"),
                      elevation: 6.0,
                      //splashColor: Colors.black12,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
