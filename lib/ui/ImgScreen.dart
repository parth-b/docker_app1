import 'package:flutter/material.dart';

class ImgScreen extends StatefulWidget {
  @override
  _ImgScreenState createState() => _ImgScreenState();
}

class _ImgScreenState extends State<ImgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(7),
              child: Text("Image Commands"),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
              ),
            ),
            ListTile(
              title: Text("commit"),
            ),
            ListTile(
              title: Text("build"),
            ),
            ListTile(
              title: Text("history"),
            ),
            ListTile(
              title: Text("import"),
            ),
            ListTile(
              title: Text("inspect"),
            ),
            ListTile(
              title: Text("ls"),
            ),
            ListTile(
              title: Text("pull"),
            ),
            ListTile(
              title: Text("push "),
            ),
            ListTile(
              title: Text("remove"),
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
