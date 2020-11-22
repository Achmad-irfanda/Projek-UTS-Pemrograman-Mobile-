import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:projekuts/umum/bottombar.dart';
import 'package:projekuts/utama/edit.dart';

class Detailbuku extends StatefulWidget{
  List list;
  int index;
  Detailbuku({this.index, this.list});

  @override
  _DetailbukuState createState() => _DetailbukuState();
}

class _DetailbukuState extends State<Detailbuku> {
  
  void deletedata(){
    var url="http://10.0.2.2/utsmobile/delete.php";
    https.post(url, body :{
      'id': widget.list[widget.index]['id']
    });
  }

  void confirm(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Anda Yakin Ingin Menghapus Buku Dengan Judul "${widget.list[widget.index]['judul']}"'),
      actions: [
        new RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), 
          child: new Text('Delete'),
          color: Colors.red[800],  
          onPressed: () { deletedata();  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        new bottombar() ), (Route<dynamic> route) => false);}
          
        ),
        new RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),  
          child: new Text('Cancel'),
          color: Colors.blue[800],
          onPressed: (){
            Navigator.pop(context);
          }),
      ],
    );
    showDialog(context:context, child:  alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${widget.list[widget.index]['judul']}'),
      ),
      body: new Container(
        height: 270.0,
        padding: EdgeInsets.all(20),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 30)),
                new Text(widget.list[widget.index]['judul'], style: new TextStyle(color: Colors.blue[800], fontSize: 20),),
                new Text("id: ${widget.list[widget.index]['id']}", style: new TextStyle(fontSize: 18),),
                new Text("pengarang: ${widget.list[widget.index]['pengarang']}", style: new TextStyle(fontSize: 18),),
                new Text("rak: ${widget.list[widget.index]['rak']}", style: new TextStyle(fontSize: 18),),

                new Padding(padding: EdgeInsets.only(top: 30)),
                   Row(
                     mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text('Edit'),
                          color: Colors.green,
                          onPressed: ()=>Navigator.of(context).push(
                              new MaterialPageRoute(builder: (BuildContext)=> new Editdata(list: widget.list, index: widget.index,),
                              ),
                          ),
                      ),
                      ),
                      new Container(
                        margin: EdgeInsets.all(10),
                        child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                         child: Text('Delete'),
                         color: Colors.red[500],
                          onPressed: ()=>confirm(),
                      ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
