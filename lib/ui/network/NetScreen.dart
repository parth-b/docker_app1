import 'package:docker_app/ui/network/NetConnect.dart';
import 'package:docker_app/ui/network/NetCreate.dart';
import 'package:docker_app/ui/network/NetDisconnect.dart';
import 'package:docker_app/ui/network/NetInspect.dart';
import 'package:docker_app/ui/network/NetLs.dart';
import 'package:docker_app/ui/network/NetRm.dart';
import 'package:flutter/material.dart';

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
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => NetConnect()));
                }),
            ListTile(
                title: Text("create"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => NetCreate()));
                }),
            ListTile(
                title: Text("disconnect"),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => NetDisconnect()));
                }),
            ListTile(
                title: Text("inspect"),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => NetInspect()));
                }),
            ListTile(
                title: Text("list"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => NetLs()));
                }),
            ListTile(
                title: Text("rm"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => NetRm()));
                }),
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
