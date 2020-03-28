import 'package:flutter/material.dart';
import 'package:flutter_fyp/CustomerLogin.dart';
import 'package:flutter_fyp/customerScreen/custManagerProfile.dart';
import 'package:flutter_fyp/managerScreen/ContactUs.dart';
import 'package:flutter_fyp/managerScreen/EditCredentials.dart';
import 'package:flutter_fyp/managerScreen/Ratings.dart';
import 'package:flutter_fyp/managerScreen/Reviews.dart';
import 'package:flutter_fyp/managerScreen/manager.dart';
import 'package:flutter_fyp/managerScreen/AboutUs.dart';





void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: CustomerView()));

class CustomerView extends StatefulWidget {
  @override
  _MyCustomerViewState createState() => _MyCustomerViewState();
}

class _MyCustomerViewState extends State<CustomerView> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("PENTA EVENTS");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.grey[200],
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (this.cusIcon.icon == Icons.search) {
                  this.cusIcon = Icon(Icons.arrow_back);
                  this.cusSearchBar = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: InputBorder.none,
//                      border: OutlineInputBorder(
//                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
                      hintText: "Search",
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  );
                } else {
                  this.cusIcon = Icon(Icons.search);
                  this.cusSearchBar = Text("PENTA EVENTS");
                }
              });
            },
            icon: cusIcon,
          )
        ],
        title: cusSearchBar,
      ),
      drawer: new Drawer(
          child: new ListView(children: <Widget>[
        new UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.teal),
          accountName: new Text("Harper"),
          accountEmail: new Text("harper@gmail.com"),
          currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
            backgroundImage: new AssetImage('assets/cust.jpg'),
          )),
        ),
        new ListTile(
          leading: Icon(Icons.phone_in_talk),
          title: new Text("Contact us"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Contact();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.people),
          title: new Text("About us"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return About();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.comment),
          title: new Text("Reviews"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddReview();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.star),
          title: new Text("Ratings"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Rate();
            }));
          },
        ),
//
        new ListTile(
          leading: Icon(Icons.edit),
          title: new Text("Edit Credentials"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return EditCredentials();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.lock),
          title: new Text("Logout"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CustLogIn();
            }));
          },
        ),
      ])),

      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/des.jpg')),
        ),
      child: new RadButton(),
      )
    );
  }
}

class RadButton extends StatelessWidget {
  //final listBelow = new Container();

  List<ManagerName> manager = [
    ManagerName(
        coverURL: 'cover1.jpg', name: 'Star Events', imageURL: 'logo1.jpg'),
    ManagerName(
        coverURL: 'cover2.jpg', name: '8 People Events', imageURL: 'logo2.jpg'),
    ManagerName(
        coverURL: 'cover3.jpg',
        name: 'Occasion All Events',
        imageURL: 'logo3.png'),
    ManagerName(
        coverURL: 'cover4.jpg', name: 'High Events', imageURL: 'logo4.jpg'),
    ManagerName(
        coverURL: 'cover5.jpg', name: 'MJM Events', imageURL: 'logo5.jpg'),
    ManagerName(
        coverURL: 'cover6.jpg', name: 'Social Events', imageURL: 'logo6.jpg'),
    ManagerName(
        coverURL: 'cover7.jpg', name: 'Eventzee', imageURL: 'logo7.jpg'),
    ManagerName(
        coverURL: 'cover8.jpg',
        name: 'Buttoned-Up Events',
        imageURL: 'logo8.jpg'),
    ManagerName(coverURL: 'cover9.jpg', name: 'Evento', imageURL: 'logo9.png'),
    ManagerName(
        coverURL: 'cover10.jpg',
        name: 'The Function Empire',
        imageURL: 'logo10.jpg'),
    ManagerName(
        coverURL: 'cover11.jpg', name: 'E Jacc Events', imageURL: 'logo11.png'),
    ManagerName(
        coverURL: 'cover12.jpg',
        name: 'PenPoint Events',
        imageURL: 'logo12.jpg'),
    ManagerName(
        coverURL: 'cover13.jpg', name: 'Flavours', imageURL: 'logo13.png'),
    ManagerName(
        coverURL: 'cover14.jpg', name: 'Sparkly Ideas', imageURL: 'logo14.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body:
        SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                color: Colors.teal,
                icon: Icon(
                  Icons.directions_run,
                  color: Colors.white,
                ),
                label: Text('Nearest',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              RaisedButton.icon(
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                color: Colors.teal,
                icon: Icon(
                  Icons.format_align_justify,
                  color: Colors.white,
                ),
                label: Text('Categories',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          ListView.separated(

              //scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: manager.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 25.0,
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15.0),
                    child: Container(
                        height: 150.0,
                        //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                        child: Stack(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child:GestureDetector(


                                    onTap: () {
                                      _navigateToScreen(context);
                                    },
//                        onTap() => Navigator.push(context,
//                      MaterialPageRoute(builder: (context) {
//                      return CustViewManagerProfile();
//                      }))

                                  child: Container(

                                    height: 500.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/${manager[index].coverURL}'),

                                    )),
                                  ),
                                ))
                              ],

                            ),
                            ListTile(
                              onTap: () {

                              },
                            ),
                            Positioned(
                              top: 60.0,
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/${manager[index].imageURL}'),
                                    ),
                                    border: Border.all(
                                        color: Colors.white, width: 3.0)),
                              ),
                            ),
                          ],
                        )));
              },
              separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(manager[index].name,
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20.0,
                          )),
                    ),

//               )
                  ))
        ])));
  }
}
_navigateToScreen(BuildContext context){
  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return CustViewManagerProfile();
                      }));
}