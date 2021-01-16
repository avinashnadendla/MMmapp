import 'package:flutter/material.dart';
import 'package:mmmapp/Screens/ChatPage.dart';
import 'package:mmmapp/Screens/Groups/GroupPage.dart';

class CancelAssignment extends StatefulWidget {
  @override
  _CancelAssignmentState createState() => _CancelAssignmentState();
}

class _CancelAssignmentState extends State<CancelAssignment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                "Assignments",
                style: TextStyle(color: Colors.white),
              ),
            ),

//

            bottom: TabBar(tabs: [
              Tab(child: AssignmentTabs("Cancelled")),
              Tab(child: AssignmentTabs("Cancel Order")),
            ]),
          ),
          body: TabBarView(children: [
            ChatPage(),
            GroupPage(),
          ]),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget AssignmentTabs(String text) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ));
  }
}