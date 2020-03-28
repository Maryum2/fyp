//import 'dart:io';
//
//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//
//void main() {
//  FlutterError.onError = (FlutterErrorDetails details) {
//    FlutterError.dumpErrorToConsole(details);
//    if (kReleaseMode)
//      exit(1);
//  };
//
//  runApp(new MyPackages());}
//
//class MyPackages extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Pents Events',
//      home: new Packages(),
//    );
//  }
//}
//
//class  Packages extends StatefulWidget {
//  _Packages createState() => _Packages();
//}
//
//class _Packages extends State<Packages> {
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Packages';
//
//    return MaterialApp(
//      title: title,
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text(title),
//            backgroundColor: Colors.teal,
//          ),
//          body: Container(
//              child: Column(children: <Widget>[
//                Container(
//                    child: Text('The Wish Planning Package',
//                        style: TextStyle(
//                          fontSize: 20.0,
//                          fontWeight: FontWeight.bold,
//                        ))),
//                Container(
//                    child: Text('Day of coordination services',
//                        style: TextStyle(fontStyle: FontStyle.italic))),
//                Container(
//                    child: Text(
//                        'One Event Coordinator on-site for day of coordination services(for 10 days)'
//                            'Email and Phone contact',
//                        style: TextStyle(fontStyle: FontStyle.italic))),
//                Container(
//                    child: Text('Day of event tasks include (but not limited to):',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                        ))),
//                Container(
//                    child: ListView(children: <Widget>[
//                      ListTile(
//                        leading: Icon(Icons.fastfood),
//                        title: Text('Catering'),
//                      ),
//                      ListTile(
//                        leading: Icon(Icons.card_giftcard),
//                        title: Text('Execution of wedding timeline'),
//                      ),
//                      ListTile(
//                        leading: Icon(Icons.wb_sunny),
//                        title: Text('Decor install/take down'),
//                      ),
//                    ])),
//                Container(
//                  child: RaisedButton.icon(
//                    onPressed: () {},
//                    shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(15.0),
//                    ),
//                    color: Colors.teal,
//                    icon: Icon(
//                      Icons.message,
//                      color: Colors.white,
//                    ),
//                    label: Text('Contact us for Pricing',
//                        style: TextStyle(
//                          color: Colors.white,
//                        )),
//                  ),
//                ),
//                Container(
//                    child: Column(children: <Widget>[
//                      Row(
//                        children: <Widget>[
//                          Expanded(
//                              child: Container(
//                                height: 100.0,
//                                decoration: BoxDecoration(
//                                    image: DecorationImage(
//                                        fit: BoxFit.contain,
//                                        image: AssetImage('assets/pkg1.jpg'))),
//                              )),
//                        ],
//                      )
//                    ]))
//              ]))),
//    );
//  }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////import 'package:flutter/material.dart';
////
////void main() {
////  runApp(MaterialApp(home: MyPackages()));
////}
////
////class MyPackages extends StatelessWidget {
////
////}
