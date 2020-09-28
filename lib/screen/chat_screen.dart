import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/models/group.dart';
import 'package:ugca_mobileapp/widgets/messages_widget.dart';

class ChatScreen extends StatelessWidget {
  final Group group;

  const ChatScreen({Key key, this.group}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // header container
          Container(
            height: 150,
            //width: 200,
            decoration: BoxDecoration(
                color: Colors.white, //Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      spreadRadius: 1)
                ],
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 28,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black87,
                        size: 28,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Container(
                      child: Text(group.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left),
                    ),
                  )
                ],
              ),
            ),
          ),
          // body container
          Expanded(
            child: Message(),

          )
        ],
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add new message',
        child: Icon(Icons.message),
      ), */
    );
  }
}
