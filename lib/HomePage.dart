import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String>listof=["Pizza","Burger","Burrito","Momos","Pav Bhaji","Noodles","Tacos","Kebabs","Parathas","Sandwhich"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'List View',
          style: TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add) ,
            onPressed: ()=>debugPrint("Add")
          ),
          IconButton(
            icon: Icon(Icons.search) ,
            onPressed: ()=>debugPrint("Search")
          ),
        ],
      ),
      body: Container(
        child:ListView.builder(
            itemBuilder: (_,int index)=>listDataItem(this.listof[index]),
            itemCount: this.listof.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>debugPrint("print"),
        child: Icon(Icons.add),
          backgroundColor: Colors.deepOrange ,
          foregroundColor: Colors.white
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}

class listDataItem extends StatelessWidget {

  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Colors.grey[200],
      child: Container(
        margin: EdgeInsets.all(9.0),
        padding:EdgeInsets.all(6.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(itemName[0]),
              backgroundColor: Colors.deepOrange ,
              foregroundColor: Colors.white
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Text(itemName,style: TextStyle(
                fontSize: 22.0,
              color: Colors.black
            ),
            ),
            SizedBox(height:60.0),


          ],
        ),
      ),
    );
  }
}

