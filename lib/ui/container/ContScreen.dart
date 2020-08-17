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
        title: Text("Container"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(7),
              child: Text("Container Commands"),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
              ),
            ),
            ListTile(
              title: Text("create"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("ls"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("commit"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("exec"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("inspect"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("kill/stop"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("logs/top "),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("rename"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("restart"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("remove"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
            ),
            ListTile(
              title: Text("run"),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ContRun()));
                //Navigator.push(context, route)
              },
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
