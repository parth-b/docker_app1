import 'package:docker_app/ui/container/ContRun.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContScreen extends StatefulWidget {
  @override
  _ContScreenState createState() => _ContScreenState();
}

class _ContScreenState extends State<ContScreen> {
  var help1, data;
  webhelp1(help1) async {
    var res = await http
        .get('http://192.168.29.144/cgi-bin/helpcont.py?help1=$help1');
    var sol = res.body;
    print(sol);
    setState(() {
      data = sol;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CONTAINER"),
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
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => ContRun()));
                  //Navigator.push(context, route)
                },
              )
            ],
          ),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Card(
                child: Text(
              "HELP!",
              style: TextStyle(fontSize: 24),
            )),
          ),
          Container(
            padding: EdgeInsets.all(40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "type the cmd name... ",
                filled: true,
                fillColor: Colors.amber.shade100,
              ),
              onChanged: (value) {
                help1 = value;
              },
            ),
          ),
          Container(
            // height: 75,
            child: RaisedButton(
              onPressed: () {
                webhelp1(help1);
                print("pressed");
              },
              child: Text("Show"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "your output:",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Pangolin",
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Colors.blue.shade200,
                    child: Text(
                      data ?? "no output currently",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Pangolin",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
