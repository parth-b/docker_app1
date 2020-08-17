import 'package:docker_app/ui/network/NetCreate.dart';
import 'package:flutter/material.dart';
//import 'ui/network/NetCreate.dart';

class NetScreen extends StatefulWidget {
  @override
  _NetScreenState createState() => _NetScreenState();
}

class _NetScreenState extends State<NetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(7),
              child: Text("Network Commands"),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
              ),
            ),
            ListTile(
              title: Text("connect"),
            ),
            ListTile(
                title: Text("create"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => NetCreate()));
                }),
            ListTile(
              title: Text("disconnect"),
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
