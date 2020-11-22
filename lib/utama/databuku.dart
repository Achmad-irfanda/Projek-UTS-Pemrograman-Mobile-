import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:projekuts/utama/detailbuku.dart';

class databuku extends StatefulWidget {
  @override
  _databukuState createState() => _databukuState();
}

class _databukuState extends State<databuku> {
  Future<List> getData() async {
    final response = await http.get("http://10.0.2.2/utsmobile/get_data.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('E-Library',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          centerTitle: true),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(list: snapshot.data)
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.only(top: 8),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext Context) =>
                    new Detailbuku(list: list, index: i))),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['judul']),
                leading: new Icon(Icons.book),
                subtitle: new Text("pengarang: ${list[i]['pengarang']}"),
              ),
            ),
          ),
        );
      },
    );
  }
}
