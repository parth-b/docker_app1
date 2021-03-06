import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ContRun extends StatefulWidget {
  @override
  _ContRunState createState() => _ContRunState();
}

class _ContRunState extends State<ContRun> {
  var x, y, z, t;
  var data;
  web(x, y, z, t) async {
    var res = await http
        .get('http://192.168.29.144/cgi-bin/createcont.py?x=$x&y=$y&z=$z&t=$t');
    var sol = res.body;

    setState(() {
      data = sol;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: SizedBox.expand(
          child: DraggableScrollableSheet(
            initialChildSize: .9,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      //FlatButton(onPressed: null, child: Text("hello")),
                      Container(
                        child: Card(
                          margin: EdgeInsets.only(top: 40),
                          child: Image.network(
                            "https://www.docker.com/sites/default/files/d8/styles/role_icon/public/2019-07/Docker-Logo-White-RGB_Horizontal.png?itok=cFIHFZiP",
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.only(top: 20),
                          child: TextField(
                            autocorrect: false,
                            //expands: true,
                            onChanged: (value) {
                              x = value;
                              print(x);
                            },
                            decoration: InputDecoration(
                              hintText: "type in the name of the os...",
                              filled: true,
                              fillColor: Colors.amber.shade400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            autocorrect: false,
                            //expands: true,
                            onChanged: (value) {
                              y = value;
                              print(y);
                            },
                            decoration: InputDecoration(
                              hintText: "give the image name...",
                              filled: true,
                              fillColor: Colors.amber.shade300,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            autocorrect: false,
                            //expands: true,
                            onChanged: (value) {
                              z = value;
                              print(z);
                            },
                            decoration: InputDecoration(
                              hintText: "network...",
                              filled: true,
                              fillColor: Colors.amber.shade200,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            autocorrect: false,
                            //expands: true,
                            onChanged: (value) {
                              t = value;
                              //print(t);
                            },
                            decoration: InputDecoration(
                              hintText: "volume...",
                              filled: true,
                              fillColor: Colors.amber.shade100,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 7),
                        child: RaisedButton(
                          onPressed: () {
                            //print('pressed');
                            web(x, y, z, t);
                          },
                          child: Text("press"),
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
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
