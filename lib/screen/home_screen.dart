import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/models/group.dart';
import 'package:ugca_mobileapp/widgets/groups_widget.dart';
import 'package:flutter/src/rendering/box.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xffD47FA6),
            child: Container(
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80))),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // You Container
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 30,
                            backgroundImage:
                                AssetImage('assets/images/profile_image.jpg'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'YOU',
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Groups Container
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            maxRadius: 30.0,
                            child: CircleAvatar(
                                maxRadius: 28.0,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.book,
                                  color: Theme.of(context).primaryColor,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Groups',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  // news Container
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            maxRadius: 30.0,
                            child: CircleAvatar(
                                maxRadius: 28.0,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black38,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'News',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Settings Container
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            maxRadius: 30.0,
                            child: CircleAvatar(
                                maxRadius: 28.0,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.black38,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // list of groups
          Expanded(
            child: Container(color: Color(0xff9599B3), child: GroupCard()),
          )
        ],
        
      ),
      
    );
  }
}
