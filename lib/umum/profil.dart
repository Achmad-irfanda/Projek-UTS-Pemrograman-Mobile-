import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Profil Developer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
      body: new SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: new Column(
            children: <Widget>[
              new Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Profil Developer",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(
                        top: 10,
                      ),
                      child: new Container(
                        child: Column(children: <Widget>[
                          new CircleAvatar(
                            radius: 100,
                            backgroundColor: Color.fromRGBO(53, 177, 149, 1),
                            child: CircleAvatar(
                              radius: 97,
                              backgroundImage: AssetImage('assets/profil.jpg'),
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: 20, left: 8, right: 8),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Nama   : Achmad Irfanda",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Status  : Pelajar/Mahasiswa",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("NIM      : 1815091032",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Prodi    : Sistem Informasi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Smt      : 5 ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Kelas    : A ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Hobby  : Membaca",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Genre   : Nasyid, Manga",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 10, bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Motto   : 'Man Jadda WaJada'",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(53, 177, 149, 1),
                                width: 3,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(20, 20)),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(53, 177, 149, 1),
              width: 3,
            ),
            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
          ),
        ),
      ),
    );
  }
}
