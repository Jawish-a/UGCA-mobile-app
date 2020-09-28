import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ugca_mobileapp/models/group.dart';
import 'package:ugca_mobileapp/screen/chat_screen.dart';

class GroupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Group>>(
      future: fetchGroups(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? GroupsList(groups: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

class GroupsList extends StatefulWidget {
  final List<Group> groups;

  GroupsList({Key key, this.groups}) : super(key: key);

  @override
  _GroupsListState createState() => _GroupsListState();
}

class _GroupsListState extends State<GroupsList> {
  var colors = [
    Color(0xffD47FA6),
    Color(0xff8A56AC),
    Color(0xff241332),
    Color(0xff9599B3),
    Colors.deepPurple,
    Colors.green,
    Colors.indigo,
    Colors.lightBlue
  ];

  var icons = [
    Icons.explore,
    Icons.all_inclusive,
    Icons.category,
    Icons.verified_user,
    Icons.network_check,
    Icons.equalizer,
    Icons.code,
    Icons.cast_connected,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: widget.groups.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigateToChatRoom(widget.groups[index]);
          },
          child: Container(
            color: colors[index + 1],
            child: Container(
              decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80))),
              height: 180,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //padding: EdgeInsets.all(18),
                    width: 200,
                    //color: Colors.red,
                    height: 130,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.groups[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          widget.groups[index].description,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(28),
                      child: Icon(
                        icons[index],
                        size: 48.0,
                        color: Colors.white24,
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /* Future navigateToChat(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChatScreen()));
  } */
  void navigateToChatRoom(Group group) async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChatScreen(group: group)));
  }
}
