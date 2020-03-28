import 'package:flutter/material.dart';
import 'package:flutter_fyp/CustEvent.dart';
import 'package:flutter_fyp/LoginManager.dart';


void main() =>
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppBar Scaffold',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: ManagerSignUp()));

class ManagerSignUp extends StatefulWidget {
  ManagerSignUp();


  @override
  _MyManagerSignUpState createState() => _MyManagerSignUpState();
}

class _MyManagerSignUpState extends State<ManagerSignUp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Sign up"),
          backgroundColor: Colors.teal,


        ),
        body: Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/des.jpg')),
            ),
//            //width: MediaQuery
//                .of(context)
//                .size
//                .width,
//            //height: MediaQuery
//                .of(context)
//                .size
//                .height * 0.90,

            child:

            Column(
                children: <Widget>[

                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      margin: EdgeInsets.only(top: 200),
                      child:

                      Row(children: <Widget>[
                        Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.40,
                            margin: EdgeInsets.only(left: 30),

                            child:
                            Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Name...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Organization name...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),

                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Address...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Serving Areas...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),
                                ])

                        ),


                        Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.40,
                            margin: EdgeInsets.only(left: 40),

                            child:
                            Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Password...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Phone no...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "CNIC...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),

                                  TextFormField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.0)),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 25.0, left: 10),
                                      hintText: "Fax...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                          //Color of the border
                                          style: BorderStyle.solid,
                                          //Style of the border
                                          width: 2.0, //width of the border
                                        ),
                                      ),
                                    ),
                                  ),

                                ])

                        )
                      ],)),
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
                        side: BorderSide(
                          color: Colors.teal, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 2.0, //width of the border
                        ),
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        Success(context);
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          )),
                      elevation: 10.0,
                      //splashColor: Colors.black12,
                      color: Colors.teal,
                    ),

                  )
                ]))
    );
  }
}

void Success(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text("You are registered successfully!"),
      content: Text("Now press Okay for going to login screen or press cancel for going to main screen."),
      actions: <Widget>[
        RaisedButton(
  shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(15.0),
  ),
            child: Text('Ok'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ManagerLogIn();
              }));
            },
          elevation: 10.0,
          color: Colors.teal,
        ),
        RaisedButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
          child: Text('Cancel'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage();
            }));
          },
          elevation: 10.0,
          color: Colors.teal,
        )
      ]
  );
  //Navigator.of(context).pop();
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}