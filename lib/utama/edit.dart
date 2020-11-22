import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projekuts/umum/bottombar.dart';

class Editdata extends StatefulWidget {
  final list;
  final index;

  Editdata({this.list, this.index});
  @override
  _EditdataState createState() => _EditdataState();
}

class _EditdataState extends State<Editdata> {
  TextEditingController controllerJudul;
  TextEditingController controllerPengarang;
  TextEditingController controllerRak;

  void editdata() {
    var url = "http://10.0.2.2/utsmobile/update.php";

    http.post(url, body: {
      'id': widget.list[widget.index]['id'],
      'judul': controllerJudul.text,
      'pengarang': controllerPengarang.text,
      'rak': controllerRak.text,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    controllerJudul =
        new TextEditingController(text: widget.list[widget.index]['judul']);
    controllerPengarang =
        new TextEditingController(text: widget.list[widget.index]['pengarang']);
    controllerRak =
        new TextEditingController(text: widget.list[widget.index]['rak']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Edit Data',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controllerJudul,
              decoration: (new InputDecoration(
                hintText: 'masukkan judul',
                labelText: 'Judul Buku',
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controllerPengarang,
              decoration: (new InputDecoration(
                hintText: 'masukkan nama Pengarang',
                labelText: 'Pengarang Buku',
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controllerRak,
              decoration: (new InputDecoration(
                hintText: 'Masukkan Kode Rak Buku',
                labelText: 'Rak Buku',
              )),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                child: Text(
                  'Edit Data',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  editdata();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => new bottombar()),
                      (Route<dynamic> route) => false);
                }),
          ),
        ],
      ),
    );
  }
}
