import 'package:flutter/material.dart';
import 'package:projekuts/utama/databuku.dart';
import 'package:projekuts/utama/tambahdata.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("E-Library",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: halamanhome(),
      ),
    );
  }
}

class halamanhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset("assets/tajuk.jpg"),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 100, bottom: 100),
                    child: new Column(
                      children: <Widget>[
                        IconButton(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          iconSize: 100,
                          icon: new Image.asset("assets/book.png"),
                          onPressed: () {
                            Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (BuildContext context) => databuku(),
                              ),
                            );
                          },
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Data Buku',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(
                        left: 20, top: 100, right: 30, bottom: 100),
                    child: new Column(
                      children: <Widget>[
                        IconButton(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          iconSize: 100,
                          icon: new Image.asset("assets/add.png"),
                          onPressed: () {
                            Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (BuildContext context) => tambahdata(),
                              ),
                            );
                          },
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Tambah Buku',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
