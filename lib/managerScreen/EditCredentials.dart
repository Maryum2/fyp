 import 'package:flutter/material.dart';


 void main() {
    runApp(MaterialApp(
      home:EditCredentials()
    ));
    }

 class EditCredentials extends StatefulWidget{
   @override
   MyApp2 createState()=> new MyApp2();
 }
 class MyApp2 extends State<EditCredentials> {
   // This widget is the root of your application.
   final TextEditingController controller= new TextEditingController();
   String results="";
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,

       theme: ThemeData(
         primarySwatch: Colors.teal,
       ),
       home: Scaffold(appBar: AppBar(title: Text('Edit Credentials'),
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

         margin: EdgeInsets.only(left:10,right:10),
         child:Column(children: <Widget>[

                Expanded( child:
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: Text('Please fill all the fields,if you do not want to edit a particular field,fill it with old data of yours.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left))) ,
                Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Username...')
                )),

                Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Password...')
                )),

                Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Confirm Password...')
                )),

                Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Email...')
                )),

                Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Phone number...')
                )),

                Expanded(
                  child:TextField(
                  decoration: InputDecoration(hintText: 'Adress...')
                )),


                  Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'CNIC...')
                )),

                Expanded(child:
                Container(
                  alignment:Alignment.bottomRight,
                  margin:  EdgeInsets.all(4.0),

                child:RaisedButton(

                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child:Text('Edit',
                    style: TextStyle(
                    color: Colors.white,
                  )) ,
                  color: Colors.teal,
                  onPressed: (){
                    //action
                  },)))

         ])
         ,)
        ),
      );

   }
 }
