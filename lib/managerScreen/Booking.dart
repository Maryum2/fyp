import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: MyBooking()));

class MyBooking extends StatefulWidget {
  MyBooking();

  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: Text("Booking"),
        // color: Colors.teal,
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/des.jpg')),
        ),
       // width: MediaQuery.of(context).size.width,
       // height: MediaQuery.of(context).size.height * 0.80,
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 150),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Name...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Phone...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Address...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Email...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Add Service...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "No of People...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ])),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        margin: EdgeInsets.only(left: 40),
                        child: Column(children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Category...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Package...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Theme...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Start Date...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "End Date...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                                  borderSide:
                                  BorderSide(color: Colors.teal)),
                              contentPadding:
                              EdgeInsets.only(top: 40.0, left: 10),
                              hintText: "Calculate Cost...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ]))
                  ],
                )),
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
                  confirmBooking(context);
                },
                child: Text("Confirm Booking"),
                elevation: 6.0,
                //splashColor: Colors.black12,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void confirmBooking(BuildContext context) {
  var alertDialog=AlertDialog(
    title:Text("Event Booked Successfully "),
    content:Text("Have a Happy event! "),
      actions: <Widget>[
        RaisedButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
          child: Text('Ok'),
          onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (context) {
//              return CustLogIn();
//            }));
          },
          elevation: 10.0,
          color: Colors.teal,
        )
      ]

  );
  showDialog(
      context:context,
      builder: (BuildContext context){
        return alertDialog;
      }
  );


}

