import 'package:flutter/material.dart';
import 'package:flutter_fyp/CustomerLogin.dart';
import 'package:flutter_fyp/LoginManager.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: MyLogIn()));
class MyLogIn extends StatefulWidget {
  MyLogIn();

  @override
  _MyLogInState createState() => _MyLogInState();
}

class  _MyLogInState extends State<MyLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: Text("LogIn"),
            backgroundColor: Colors.teal,
    leading: IconButton(
    onPressed: () {
    Navigator.of(context).pop();
    },
    icon: Icon(Icons.arrow_back),
    )),
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
              width: 225.0,
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
                    return ManagerLogIn();
                  }));
                },
                child: Text("LogIn as Event Manager",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
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
              width: 225.0,
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
                    return CustLogIn();
                  }));
                },
                child: Text("LogIn as Customer",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
                elevation: 10.0,
                //splashColor: Colors.black12,
                color: Colors.teal,
              ),
            ),
          ],
        )
    ))
    );
  }
}
