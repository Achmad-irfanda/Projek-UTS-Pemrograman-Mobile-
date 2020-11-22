import 'package:flutter/material.dart';

class petunjuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Petunjuk Penggunaan',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 20)),
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Petunjuk Penggunaan Aplikasi E-Library',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("1. Aplikasi E-Library merupakan sebuah aplikasi manajemen buku sederhana yang ada pada sebuah perpustakaan.",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              '2. Fitur utama yang dapat ditampilkan pada aplikasi ini adalah menampilkan, menghapus, mengedit dan menambahkan data buku.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            '3 Langkah yang dapat dilakukan oleh user adalah menambahkan data buku yang akan dikelola oleh aplikasi ini, dengan menekan button "Tambah Buku".',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left:8, right: 8, bottom: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            '4 Untuk menghapus dan mengedit data buku yang ada pada aplikasi dapat menggunakan fitur menampilkan data buku, lalu menekan button data buku yang akan di hapus atau di edit datanya. ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                    ),
                   
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(53, 177, 149, 1),
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.elliptical(23.0, 23.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
