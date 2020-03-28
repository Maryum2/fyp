import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fyp/managerScreen/Booking.dart';
import 'package:flutter_fyp/managerScreen/EditInformation.dart';
import 'package:flutter_fyp/managerScreen/Packages.dart';
import 'package:flutter_fyp/managerScreen/Themes.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_fyp/managerScreen/Categories.dart';

import 'Services.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };

  runApp(new View());}

class View extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pents Events',
      home: new MyEvents(),
    );
  }
}

class MyEvents extends StatefulWidget {
  _MyEvents createState() => _MyEvents();
}

class _MyEvents extends State<MyEvents> {
//  File _image;
//  AnimationController _controller;
//  ImagePickerHandler  imagePicker;
  File imageFile;

  _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            backgroundColor: Colors.grey,
            // contentPadding: EdgeInsets.all(10.0),
            title: Text(
              "Make a Choice!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
              ),
            ),
            content: SingleChildScrollView(
                child: ListBody(
                    children: <Widget>[
                      GestureDetector(

                        child: Text("Gallery"),
                        onTap: () {
                          _openGallery(context);
                        },
                      ),
                      Padding(padding: EdgeInsets.all(15.0)),
                      GestureDetector(
                        child: Text("Camera"),
                        onTap: () {
                          _openCamera(context);
                        },
                      ),
                    ])),
          );
        });
  }


  Future<void> _showDialog1(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            backgroundColor: Colors.grey,
            // contentPadding: EdgeInsets.all(10.0),
            title: Text(
              "Make a Choice!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
              ),
            ),
            content: SingleChildScrollView(
                child: ListBody(
                    children: <Widget>[
                      GestureDetector(

                        child: Text("Gallery"),
                        onTap: () {
                          _openGallery(context);
                        },
                      ),
                      Padding(padding: EdgeInsets.all(15.0)),
                      GestureDetector(
                        child: Text("Camera"),
                        onTap: () {
                          _openCamera(context);
                        },
                      ),
                    ])),
          );
        });
  }








  Widget _decideImageView() {
    // ignore: unrelated_type_equality_checks
    if (imageFile == null) {
      return Container(
        height: 95.0,
        width: 95.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/logo1.jpg'),

              //Image.file(imageFile,width:400 ,height:400);
            ),
            border: Border.all(color: Colors.white, width: 3.0)),
      );
    } else {
      return Container(
        height: 95.0,
        width: 95.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill, image: FileImage(this.imageFile)
              //image: Image.file(imageFile),
            ),
            border: Border.all(color: Colors.white, width: 3.0)),
      );

      //Image.file(imageFile,width:400 ,height:400);

    }
  }


  // ignore: missing_return
  Widget _decideImageView1() {
    // ignore: unrelated_type_equality_checks
    if (imageFile == null) {
      return Container(
        height: 230.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/cover1.jpg'))),
      );
    } else {
      Container(
        height: 230.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(this.imageFile))),
      );

      //Image.file(imageFile,width:400 ,height:400);

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Penta Events'),
        backgroundColor: Colors.teal,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: new Text('John doe'),
              accountEmail: new Text('eventpalace@gmail.com'),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('assets/eventmanager.jpg'),
                ),
              ),
            ),
//            new ListTile(
//              leading: new Icon(Icons.chrome_reader_mode),
//              title: new Text('Booking'),
//            ),
            new ListTile(
              leading: new Icon(Icons.category),
              title: new Text('Categories'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyCategory();
                }));
              },
            ),
//            new ListTile(
//              leading: new Icon(Icons.card_giftcard),
//              title: new Text('Packages'),
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return MyPackages();
//                }));
//              },
//            ),
            new ListTile(
              leading: new Icon(Icons.color_lens),
              title: new Text('Themes'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyThemes();
                }));
              },
            ),
            new ListTile(
              leading: new Icon(Icons.edit),
              title: new Text('Edit Information'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EditInfo();
                }));
              },
            ),
            new ListTile(
              leading: new Icon(Icons.calendar_today),
              title: new Text('Services'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Services();

                }
                ));

              },
            ),
//           new ListTile(
//              leading: new Icon(Icons.calendar_today),
//              title: new Text('Booking'),
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return MyBooking();
//
//                }
//                ));
//
//              },
//            ),
          ],
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/des.jpg')),
        ),

      child:new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Stack(children: <Widget>[
                              _decideImageView1(),
                              IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.white,
                                onPressed: () {
                                  _showDialog1(context);
                                },
                              )
                            ]))
                      ],
                    ),
                    Positioned(
                      top: 130.0,
                      child: Stack(children: <Widget>[
                        _decideImageView(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.white,
                          onPressed: () {
                            _showDialog(context);
                          },
                        )
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Star Events',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28.0))
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'G Block,Iqbal Town,Lahore',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '0421234567',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.mail),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'starevents@gmail.com',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '11:00 AM to 9:00PM',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_city),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'All over in Lahore',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 12.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(7.0),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(1.0),
                          alignment: Alignment.topLeft,
                          child: Text("Description:",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ))),
                      Container(
                        margin: EdgeInsets.all(1.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          '''
                                            
Strategically supported channel and alliance partnerships for Dentrix Enterprise.Increased revenue by 45% quarter over quarter within channel partner ecosystem.Created new marketing strategies with the goal of generating new opportunities for sales team.Organized all partner and client events such as dinners and social events for relationship building.''',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 12.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(7.0),
                  //alignment: Alignment.topLeft,
                  child: Row(children: <Widget>[
                    Text(
                      "Porfolio:",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    //leading: new Icon(Icons.color_lens),
                    IconButton(icon: Icon(Icons.add_a_photo),
                      alignment: Alignment.topRight,

                      onPressed: () {
                        _showDialog(context);
                      },)
                  ])),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage('assets/p1.jpg'))),
                            )),
                        Expanded(
                            child: Container(
                              height: 100.0,
                              margin: EdgeInsets.only(left: 3.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage('assets/p2.jpg'))),
                            )),
                        Expanded(
                            child: Container(
                              height: 100.0,
                              margin: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage('assets/p3.jpg'))),
                            )),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 100.0,
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/p4.jpg'))),
                            )),
                        Expanded(
                            child: Container(
                              height: 100.0,
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/p5.jpg'))),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 15.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: EdgeInsets.all( 7.0),
                alignment: Alignment.topLeft,
                child: Text(
                  "Customers:",
                  style: TextStyle(fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_right),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Zarish Alam',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_right),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Duaa Hamid',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_right),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Kanza Khalid',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_right),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Maryum Zaheer',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_right),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Atar Nisa',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    )
    );
  }
}
