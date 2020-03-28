import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home:MyThemes()
  ));
}

class MyThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Themes';

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
        body: Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/des.jpg')),
          ),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Birthday'),
              subtitle: Text('Sports Party, Constructio Spree, Farm Festivity, Mermain Merriment, Camping Cheer, Beach Bash'),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Wedding'),
              subtitle: Text('Romantic, Vintage, Modern, Rustic, Garden Party/Casual, Formal/Traditional'),
            ),
            ListTile(
              leading: Icon(Icons.filter_vintage),
              title: Text('Farewell'),
              subtitle: Text('Ready-to-Bloom, Decade Party, Off-to-See-the-World, Prom Evening, Garden Party/Casual, Oscar Theme'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Orientation'),
              subtitle: Text('Boot Camp 101, Costume Orientation, Summer Camp, Welcome to the Great Land'),
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Bridal Shower'),
              subtitle: Text('Beach Bonanza, Tea Party, Glam Pajama, Winter WonderLand, Darling Disney, Backyard Bliss'),
            ),
            ListTile(
              leading: Icon(Icons.party_mode),
              title: Text('Bachelorette Party'),
              subtitle: Text('Girls Weekend away, The Spa Party, Final Fiesta, Beach and Boujee'),
            ),
          ],
        ),
      ),
      )
    );
  }

}

//class ListBelow extends StatefulWidget {
//  @override
//  _ListBelowState createState() => _ListBelowState();
//}
//
//class _ListBelowState extends State<ListBelow> {
//  List<ManagerName> manager = [
//    ManagerName(name: 'Johnson',
//        imageURL: 'john.jpg'),
//    ManagerName(name: 'Clark',
//        imageURL: 'clark.jpg'),
//    ManagerName(name: 'Meena',
//        imageURL: 'meena.jpg'),
//    ManagerName(name: 'Teena',
//        imageURL: 'teena.jpg'),
//    ManagerName(name: 'Bobby',
//        imageURL: 'bobby.jpg'),
//    ManagerName(name: 'Jane',
//        imageURL: 'jane.jpg'),
//    ManagerName(name: 'Jango',
//        imageURL: 'jango.jpg'),
//    ManagerName(name: 'Harper',
//        imageURL: 'harper.jpg'),
//    ManagerName(name: 'Ever',
//        imageURL: 'ever.jpg'),
//    ManagerName(name: 'Clever',
//        imageURL: 'clever.jpg'),
//    ManagerName(name: 'Marlie',
//        imageURL: 'marlie.jpg'),
//    ManagerName(name: 'Aloke',
//        imageURL: 'aloke.jpg'),
//    ManagerName(name: 'Luuu',
//        imageURL: 'luuu.jpg'),
//    ManagerName(name: 'Ritik',
//        imageURL: 'ritik.jpg'),
//
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: new ListView.builder(
//          itemCount: manager.length,
//          itemBuilder: (context, index) {
//            return Card(
//              child: ListTile(
//                onTap: () {},
//                title: Text(manager[index].name),
//
//                leading: CircleAvatar(
//                  backgroundImage: AssetImage(
//                      'assets/${manager[index].imageURL}'),
//                ),
//              ),
//            );
//          },
//        )
//    );
//  }
//}
//