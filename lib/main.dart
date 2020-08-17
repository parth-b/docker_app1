import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ui/VolScreen.dart';
import 'ui/container/ContScreen.dart';
import 'ui/ImgScreen.dart';
import 'ui/NetScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Docker App"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: null),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            color: Colors.blueGrey[100],
            child: const Center(
                child: Text(
              'Complete docker solution for the non tech guys',
            )),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(50),
            child: Image.network(
              'https://www.docker.com/sites/default/files/d8/2019-07/Moby-logo.png',
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 300,
                margin: EdgeInsets.all(10),
                color: Colors.blueGrey[100],
                child: const Center(child: Text('Container')),
              ),
              Container(
                color: Colors.blueGrey[100],
                height: 150,
                width: 77,
                child: IconButton(
                    //child: Text("click"),

                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      print("pressed");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ContScreen(),
                        ),
                      );
                    }),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 300,
                margin: EdgeInsets.all(10),
                color: Colors.blueGrey[200],
                child: const Center(child: Text('Images')),
              ),
              Container(
                color: Colors.blueGrey[200],
                height: 150,
                width: 77,
                child: IconButton(
                    //child: Text("click"),
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      print("pressed");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ImgScreen(),
                        ),
                      );
                    }),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 300,
                margin: EdgeInsets.all(10),
                color: Colors.blueGrey[300],
                child: const Center(child: Text('Network')),
              ),
              Container(
                color: Colors.blueGrey[300],
                height: 150,
                width: 77,
                child: IconButton(
                    //child: Text("click"),
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      print("pressed");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => NetScreen(),
                        ),
                      );
                    }),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 300,
                margin: EdgeInsets.all(10),
                color: Colors.blueGrey[400],
                child: Text(
                  'Volume',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.blueGrey[400],
                height: 150,
                width: 77,
                child: IconButton(
                    //child: Text("click"),
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      print("pressed");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => FirstScreen(),
                        ),
                      );
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
