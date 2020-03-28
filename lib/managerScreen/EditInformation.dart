import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      home:EditInfo()
  ));
}

class EditInfo extends StatefulWidget{
  @override
  MyApp2 createState()=> new MyApp2();
}
class MyApp2 extends State<EditInfo> {
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
      home: Scaffold(appBar: AppBar(title: Text('Edit Information'),
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
           // margin: EdgeInsets.only(top:30.0,left:10,right:10),
            child:Column(children: <Widget>[
//
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
                  decoration: InputDecoration(hintText: 'Comapny Name...')
              )),

              Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Address...')
              )),

              Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Phone number...')
              )),

              Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Gmail Account...')
              )),

              Expanded(child:TextField(
                  decoration: InputDecoration(hintText: 'Timings...')
              )),

              Expanded(
                  child:TextField(
                      decoration: InputDecoration(hintText: 'Adress...')
                  )),


              Expanded(child:TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(hintText: 'Description...')
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
