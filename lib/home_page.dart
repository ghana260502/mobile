import 'package:flutter/material.dart';
import 'package:tugas1_pemmobile/kalkulator.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/Alucard.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to OnePiece',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Text(
            'Nama Kelompok 1 :\n'
                '1. Ghana Ardian Ilham Samudra\n'
                '2. Galih Prakoso\n'
                '3. Salsabila Riyadi',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),

    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        //borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp())
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Lanjutkan', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, loginButton],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white60,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('Kelompok 1'),
        ),
        actions: <Widget>[
          new Icon(Icons.search),
        ],
      ),
      body: Center(
        child: ListView(
          //padding: EdgeInsets.all(8.0),
          children: <Widget>[
            body,
            //SizedBox(height: 24.0),
            //loginButton,
          ],
        ),
      ),
    );
  }
}