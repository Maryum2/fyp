import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyCategory());

class MyCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Categories';

    return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
              leading:IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              backgroundColor: Colors.teal,
            ),
            body:Container(
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/des.jpg')),
                ),
            child: ListView(
              children: <Widget>[

                ListTile(
                  //leading: Icon(Icons.cake),
                  title: Text("Birthday"),

//        onTap: () {
//          debugPrint("");
//        },
                ),

                ListTile(
                  //leading:Icon()
                  title: Text("Bridal Shower"),
                ),

                ListTile(

                  title: Text("Baby Shower"),
                ),
                ListTile(

                  title: Text("Bachelor's Party"),
                ),
                ListTile(

                  title: Text("BBQ Party"),
                ),
                ListTile(

                  title: Text("Convocation"),
                ),
                ListTile(

                  title: Text("Farewell"),
                ),
                ListTile(

                  title: Text("Family Get Together"),
                ),
                ListTile(

                  title: Text("Lahore Sight Seeing"),
                ),
                ListTile(

                  title: Text("Melaad"),
                ),
                ListTile(

                  title: Text("Marriage"),
                ),
                ListTile(

                  title: Text("Marriage Anniversary"),
                ),
                ListTile(

                  title: Text("Tour Arrangements"),
                ),


              ],
            )
            )
        )
    );
  }
}



