import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Services()
  ));
}


class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Services';

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
              leading: Icon(Icons.fastfood),
              title: Text('Catering'),
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Transport'),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Decor'),
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Fire-Wroks'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Photography'),
            ),
            ListTile(
              leading: Icon(Icons.video_call),
              title: Text('Videography'),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Invitation Cards'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline),
              title: Text('Lighting'),
            ),
          ],
        ),
        )
      ),
    );
  }

}
