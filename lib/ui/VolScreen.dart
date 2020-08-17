import 'package:flutter/material.dart';

class VolScreen extends StatefulWidget {
  @override
  _VolScreenState createState() => _VolScreenState();
}

class _VolScreenState extends State<VolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Volume"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(7),
              child: Text("Volume Commands"),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
              ),
            ),
            ListTile(
              title: Text("create"),
            ),
            ListTile(
              title: Text("inspect"),
            ),
            ListTile(
              title: Text("ls"),
            ),
            ListTile(
              title: Text("rm"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 75,
            child: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
