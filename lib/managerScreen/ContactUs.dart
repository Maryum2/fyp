 import 'package:flutter/material.dart';

 void main() => runApp(Contact());

 class Contact extends StatelessWidget {
   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,

       theme: ThemeData(
         primarySwatch: Colors.teal,
       ),
       home: Scaffold(appBar: AppBar(title: Text('Contact Us'),
           backgroundColor: Colors.teal,
     leading:IconButton(
     onPressed: (){
     Navigator.of(context).pop();
     },
     icon: Icon(Icons.arrow_back),
     )
       ),
       body:
       Container (
           decoration: new BoxDecoration(
             image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('assets/des.jpg')),
           ),
         alignment:Alignment.topLeft,
           margin: EdgeInsets.only(left:10,right:10),
         //margin: EdgeInsets.all(4.0),
         child:
         Column(
           children: <Widget>[
             Container(
               alignment:Alignment.center,
               margin: EdgeInsets.only(top:300.0),
                child:Text('You may contact us through following email:',
                style:TextStyle(
                fontSize: 15.0,
         )),
             ),
                Container(
                  alignment:Alignment.center,
                  margin: EdgeInsets.only(top:25.0),
                  child:Center(
                  child:Text('pentaevents@gmail.com',
                  style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),)))
         ],)
       )


         ),
      );


   }
 }