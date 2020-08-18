import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetRm extends StatefulWidget {
  @override
  _NetRmState createState() => _NetRmState();
}

class _NetRmState extends State<NetRm> {
  var x, y;
  var data;
  web(x) async {
    var res = await http.get('http://192.168.29.160/cgi-bin/netrm.py?x=$x');
    var sol = res.body;

    setState(() {
      data = sol;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Remove Network"),
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
                      Container(
                        child: Card(
                          margin: EdgeInsets.only(top: 40),
                          child: Image.network(
                            "https://www.google.com/imgres?imgurl=https%3A%2F%2Ff1.pngfuel.com%2Fpng%2F493%2F426%2F408%2Fweb-design-icon-internet-web-browser-icon-design-web-button-computer-network-symbol-logo-png-clip-art.png&imgrefurl=https%3A%2F%2Fwww.pngfuel.com%2Ffree-png%2Frpbeu&tbnid=shxgVvbuc7ZWEM&vet=12ahUKEwju58nMwqLrAhXK3XMBHWH3CQcQMygRegUIARD6AQ..i&docid=djFAkZ7EtEwdKM&w=910&h=512&q=network%20symbol&ved=2ahUKEwju58nMwqLrAhXK3XMBHWH3CQcQMygRegUIARD6AQ",
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 7),
                        child: RaisedButton(
                          onPressed: () {
                            //print('pressed');
                            web(x);
                          },
                          child: Text("Click"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Output:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Pangolin",
                                ),
                              ),
                            ),
                            Container(
                              child: Card(
                                color: Colors.blue.shade100,
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
