import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projekuts/umum/bottombar.dart';

class tambahdata extends StatefulWidget {
  @override
  _tambahdataState createState() => _tambahdataState();
}

class _tambahdataState extends State<tambahdata> {
  TextEditingController controllerJudul = new TextEditingController();
  TextEditingController controllerPengarang = new TextEditingController();
  TextEditingController controllerRak = new TextEditingController();

  void tambahdata() {
    var url = "http://10.0.2.2/utsmobile/tambahdata.php";

    http.post(url, body: {
      'judul': controllerJudul.text,
      'pengarang': controllerPengarang.text,
      'rak': controllerRak.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Tambah Data Buku',
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
                hintText: 'Masukkan Judul',
                labelText: 'Judul Buku',
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controllerPengarang,
              decoration: (new InputDecoration(
                hintText: 'Masukkan Nama Pengarang',
                labelText: 'Pengarang Buku',
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controllerRak,
              decoration: (new InputDecoration(
                hintText: 'Masukkan Nomor Rak Buku',
                labelText: 'Rak Buku',
              )),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: new RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color.fromRGBO(53, 177, 149, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Tambahkan Data Buku',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                
                onPressed: () { tambahdata();  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        new bottombar() ), (Route<dynamic> route) => false);}
                ),
          ),
        ],
      ),
    );
  }
}
