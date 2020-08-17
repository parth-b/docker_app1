import 'package:docker_app/ui/container/ContRun.dart';
import 'package:flutter/material.dart';

class ContScreen extends StatefulWidget {
  @override
  _ContScreenState createState() => _ContScreenState();
}

class _ContScreenState extends State<ContScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Container cmds"),
            ),
            ListTile(
              title: Text("create container"),
              onTap: () {
                Navigator.pop(context);

                //Navigator.push(context, route)
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 75,
            child: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
